@def title = "Remote Computing - Cloud Computing - Setup vhpc"
@def hascode = true

@def tags = ["Remote Computing", "Cloud Computing", "Setup vhpc"]

# Setup vHPC
\toc

## Overview

We use the setup of the vHPC as used in the other section for testing as one aspect of how some aspects of working with _the cloud_ looks like. 

## Cloud provider

In order to access resources in _the cloud_ some kind of management software is needed.
There are several options available, the big public clouds providers
- Amazone  [aws](https://aws.amazon.com/)
- Microsoft [Azure](https://azure.microsoft.com/)
- Google [GCP](https://cloud.google.com/gcp/)
or an example for on premises (private)
- [openstack](https://www.openstack.org/)

Now we do not have such an infrastructure at our disposal but we can still simulate one.
We do this with a somewhat powerful server and [libvirt](https://libvirt.org/), this will be our _cloud provider_. 

## Setup of the provider
As mentioned before there is a management layer present and that needs to be installed.
For on premise clouds this includes installing the cloud software (openstack) and adding servers, storage, ... to the managed resources. 
In our case we install `libvirt` on Ubuntu.

## Create your infrastructure

Now we need to define our infrastructure. 
In our case we would like to have
- one Slurm management node
- three Slurm worker nodes
- storage for each virtual machine
- an operating system on each machine - we use Rocky Linux 8
- initial setup of the nodes to allow further configuration (service account)
- a network for all the machines

We describe all of this using the descriptive language [Terraform](https://www.terraform.io/) that is often used to define infrastructure. 
Luckily for us, there is a Terraform provider for `libvirt`. 

The actual code is `yml`, e.g. below you see the final part of defining the worker nodes.
```yml
resource "libvirt_domain" "worker" {
  count      = var.count_worker_nodes
  name       = "${format("${var.os_prefix}-${var.w_short}-%02d", count.index + 1)}.${var.domain}"
  memory     = var.memory
  vcpu       = var.vcpu
  cloudinit  = element(libvirt_cloudinit_disk.commoninit_worker[*].id, count.index)
  disk {
    volume_id = element(libvirt_volume.worker[*].id, count.index)
  }
  network_interface {
    network_name = var.network
    wait_for_lease = true
  }
  console {
    type        = "pty"
    target_port = "0"
    target_type = "serial"
  }
  console {
    type        = "pty"
    target_type = "virtio"
    target_port = "1"
  }
  graphics {
    type        = "spice"
    listen_type = "address"
    autoport    = true
  }

  connection {
    type        = "ssh"
    private_key = file("~/.ssh/id_rsa")
    user        = var.user_name
    timeout     = "2m"
    host        = format("${var.os_prefix}-${var.w_short}-%02d", count.index + 1)
  }
  cpu {
    mode = "host-passthrough"
  }
}

```

With our _Infrastructure as Code_ we can use Terraform to deploy it and with that we have our machines. 
The minimal configuration to have a service account for the next step is done via `cloud-init`.

This can easily be automated and is often called **Infrastructure as a Service** or **IaaS**.

## Configure the infrastructure

All we have now is 4 virtual machines (VMs) running Linux on them and an account that can be accessed via `ssh`.
The next step is to actually configure them into a working HPC cluster. 

For this we use [Ansible](https://www.ansible.com/) from RedHat.

Again we write some `yml` files that do the actual configuration.
More precisely we used the excellent ansible scripts provided by the [elasticluster](https://github.com/elasticluster/elasticluster) project. 
Unfortunately, this project is already a bit stale but with some adaptations it works for our setup. 

The main idea is to define playbooks. 
A playbook usually makes sure to configure a certain service, in our case the vHPC.
The service has different roles so we subdivide down to roles. 
For example the Slurm playbook is split into three parts:
- slurm-common $\to$ needed for both machines
- slurm-master $\to$ just for the management node
- slurm-worker $\to$ just for the worker nodes
We can cluster the different VMs per role and run the playbook for each role. 
The entire `elasticluster` is much bigger.
To allow reuse we further subdivide into more specific services and tasks. 
It is also possible to provide different ways for different platforms, e.g. RHEL or Debian based Linux distributions.

This is an excerpt of the `slurm.yml` playbook[^1]
```yml
---

- name: Slurm master Playbook
  hosts: slurm_master
  roles:
    - role: 'nis'
      NIS_MASTER: "{{groups.slurm_master[0]}}"
      when: 'multiuser_cluster|default("true")|bool'
    - role: 'nfs-server'
      NFS_EXPORTS:
        - path: '/home'
          clients: "{{groups.slurm_worker + groups.slurm_submit|default([])}}"
    - slurm-master


- name: Slurm worker nodes Playbook
  hosts: slurm_worker
  roles:
    - role: 'nis'
      NIS_MASTER: "{{groups.slurm_master[0]}}"
      when: 'multiuser_cluster|default("true")|bool'
    - role: 'nfs-client'
      NFS_MOUNTS:
        - fs: '{{groups.slurm_master[0]}}:/home'
          mountpoint: '/home'
    - slurm-worker

```

Ansible itself runs on the client and connects to the nodes via the service account and `ssh`.
Here the different tasks are executed on the nodes and after they are finished ansible removes the tasks again, leaving a configured system, more details[^2].

This part is often summarized under the umbrella of **Platform as a Service**.

## Use the infrastructure

Now that we have **deployed** and **configured** our service we can use it. 

Once all pieces work together the virtual HPC can be brought to life with the following sequence of commands:

```bash
terraform plan -out planfile
terraform apply -auto-approve planfile
ansible-playbook --inventory inventory.yml --become --key-file id_rsa main.yml 
```
and destroyed with
```bash
terraform destroy -auto-approve
```

\note{
This virtual HPC will not make the Top500 ;).
We will not see performance gains in comparison to running code locally, but we can get experience in how to work with a (Slurm) cluster.
}

[^1]: Original source on [github](https://github.com/elasticluster/elasticluster/blob/master/elasticluster/share/playbooks/roles/slurm.yml)

[^2]: [How does Ansible work?](https://www.redhat.com/en/topics/automation/learning-ansible-tutorial#:~:text=Ansible%20works%20by%20connecting%20to,and%20removes%20them%20when%20finished)
