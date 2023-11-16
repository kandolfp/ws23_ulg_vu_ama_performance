@def title = "Remote Computing - Cloud Computing - Architecture"
@def hascode = true

@def tags = ["Remote Computing", "Cloud Computing", "Architecture"]

# Architecture

We just briefly touch the subject of architecture for cloud systems, mainly to give a counterpoint to the same [section](../../hpc/architecture) in high performance computing.
As such, this is just a rough overview to give the concept some shape, it relies on the concepts from the [HPC architecture section](../../hpc/architecture).

A cloud infrastructure looks very similar to the one of a HPC.
It consists of a collection of individual nodes combine to a rack, multiple racks form a partition and with the support infrastructure like storage and the configuration layer it forms the cloud infrastructure. 

Usually there are two separate networks.
On for the configuration layer, the so called _under cloud_, and one for the actual connection of the nodes.

The under cloud is where the cloud software (e.g. openstack) is running and doing its job of managing the various VMs, storage accounts, network traffic, and much more. 

Again a high capacity and performance storage comes into play to support all of the various storage needs (VM discs, application storage,... ).

No when you request a virtual machine form this infrastructure you do not get a **bare metal** machine but rather a virtual machine.
That is an abstraction layer on top of the hardware.
You might get four cores and 16GB of RAM and some other user gets the 8 cores with 32GB of RAM on the same node, actually quite similar to the job scheduler we saw for HPC Systems.