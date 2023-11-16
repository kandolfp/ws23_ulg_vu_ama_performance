@def title = "Remote Computing - Cloud Computing - Setup vhpc"
@def hascode = true

@def tags = ["Remote Computing", "Cloud Computing", "Setup vhpc"]

# Setup vHPC
\toc

## Overview

We use the setup of the vHPC es used in the other section for testing as one aspect of how some aspects of working with _the cloud_ looks like. 

## Cloud provider

The cloud is managed my some system this can be one of the public clouds like
- Amazone  [aws](https://aws.amazon.com/)
- Microsoft [Azure](https://azure.microsoft.com/)
- Google [GCP](https://cloud.google.com/gcp/)
or on premises 
- [openstack](https://www.openstack.org/)

Now we do not have such an infrastructure at our disposal but we can still simulate one.
We do this with a somewhat powerful server and [libvirt](https://libvirt.org/), this is going to be our cloud provider. 

## Setup of the provider
The cloud needs to be created as so many other things.
Of on premise clouds this means installing the cloud software (openstack) and adding servers, storage, ... to the managed resources. 
In our case we install libvirt on Ubuntu.

## Create your infrastructure

Now we need to define our infrastructure. 
In our case we would like to have
- one Slurm management node
- three Slurm worker nodes
- storage for each virtual machine
- a operating system on each machine - we use Rocky Linux 8
- initial setup of the nodes to allow further configuration (service account)
- a network for all of the machines

We describe all of this in [Terraform](https://www.terraform.io/) a descriptive language that is often used to define infrastructure. 
Luckily for us, there is a Terraform provider for libvirt. 

The actual code is `yml`, e.g. below you see the final part of defining the worker nodes.
```terraform
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

This can easily be automated and is often called **Infrastructure as a Service**

## Configure the infrastructure

All we have now is 4 virtual machines that have a Linux on them and an account that can be accessed via `ssh`.
The next step is to actually configure them into a working HPC cluster. 

For this we use [Ansible](https://www.ansible.com/).

Again we write some `yml` files that do the actual configuration.
More precisely we used the excellent ansible scripts provided by the [elasticluster](https://github.com/elasticluster/elasticluster) project. 
Unfortunately, this project is already a bit stale but with some adaptations it works for our setup. 

The main idea 

