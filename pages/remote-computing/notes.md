@def title = "Remote Computing - Notes"
@def hascode = true

@def tags = ["Remote Computing", "Notes"]
# Notes
\toc

## Overview

We discussed high performance computing systems and cloud systems (way more for HPC).
Now there are some insights and notes that do not perfectly fit in either of the sections but we would like to share anyway. 

@@important
**A short disclaimer:**

The authors have some experience with HPC systems, private and public clouds.
By no measure are they experts and this are just some insights after a lot of time spent in this often conflicting fields.
@@

## Why do HPC and cloud computing exist as separate entities instead of being a unified concept?

On a first glance looking at the two systems in terms of architecture, there is not much difference.
Nevertheless, the two worlds are hard to combine and people working in one field have a hard time understanding someone from the other and vice versa.
This is due to the fact that the same term has different meanings in HPC and in cloud systems and from personal experience we can tell that the two groups come to discussions with unspoken assumptions on the system that conflict with the other world. 

We need to stress, that this is not always the case and that there are some HPC clusters that are deployed via a cloud managing software like openstack and that a lot of HPC systems come with a cloud part to provide services better suited for this setup, see for example the [architecture of Lumi](../hpc/architecture/#real_world_examples).

So here are some reasons for these two separated worlds.

### Purpose

The two systems are designed for different purposes. 

An HPC system is designed for one purpose and one only, to have as much performance as possible.
All components are fine-tuned to squeeze out the most flops as possible.
The software that is run is also fine-tuned, the specific architecture of the CPU is known to optimize the compiler, the code knows the architecture and relative positions of various sub programs on other nodes to optimize communication, I/O is layered with computation calls to save time and so forth. 

On the other hand, a cloud system is more general purpose.
One node might run a web server with a single page app or a static HTML page, a database application as well as an AI training model running at the same time.
This might change quickly and also the workload changes.
Maybe it is christmas and the web page has so many users that you actually start a second instance, handle the traffic correct for each user and boost throughput.
For all of this flops do not count.

Performance is measured differently.
It is almost impossible to know the architecture of our CPU, we will also not get the highest performance as there is an abstraction layer with the virtualization that is used.
In the case of a public cloud we do not even know in which data center our VM is running, so if we have two that work together optimizing the traffic is not possible.
Worse, the VM might even migrate to a different node over time, if it fits better somewhere else.
Maybe our node is oversubscribed, because the cloud software (can) assume that not all applications will always use 100% of the CPU.

All of this sums to two very distinct use cases that are hard to combine.
Given the relentless hunger for flops of the HPC bubble and the almost religious way of abstracting everything by the cloud community.

### Security

When we come to security the two worlds look very different as well.

Once we are in a HPC System we are free to move, there is not a lot of security holding us back, yes we have to go through the job scheduler and we are not allowed to be `root` but not much more. 
We can install software, use as much traffic between nodes as possible, no password to access individual nodes, no token to allow applications to run and so forth.
If our program is written poorly we can use more resources than the job scheduler allows (mainly on older systems), this will not make the other users happy and we will get a stern warning from the admins but that is it.
In sort we are in a gated system that is a trusted system once we are in.

The cloud system is _security first_.
Everything is built with security in mind.
This also means, we always assume that we are in an unsecure environment and therefore we need to do everything to make our application as secure as possible.
Even on the cloud software side, the virtualization allows us to capsule each application better and also limit its resources so no other application can be affected.
Connections between and maybe entire VMs are encrypted.
We do not log in with username and password, just with a token that is only valid for a short time.
All of this costs performance but is necessary to hold up the high goal of _security first_.

### Storage

The storage systems are very different. 
An HPC storage should allow high I/O throughput to not slow down the application whereas on cloud systems entire blobs of storage function as VM hard drives and access patterns are very different. 

Also here, they are built for different purposes in mind and perform poorly for the other system.

### A hybrid

That does not mean it can not work.
Something like [JuliaHub](https://juliahub.com/) can be considered a cloud for HPC workloads.
Also the big cloud providers will offer something called **burst computing** where you move your HPC workload ot the cloud when you need more and have it local otherwise.

## Just run to code on an HPC system and it is faster

As we have seen in the [parallel computing](../../hpc/) there is more to it than one might think.
The first couple of speed up factors are easy because these systems just have faster CPUs and more RAM.
If we actually want to do have an optimized code this is hard work and needs time and also comes to the price of possibly introducing bugs while worsening readability as well as maintainability and portability.
To get access to the very large systems like Lumi you first need to show that your code runs on smaller systems, that the scaling is good and that you will use the CPU time you get _well_ (impact).

## Just move the application to the cloud

Again a familiar phrase.
We have not discussed this but all of the cloud technologies like kubernetes, serverless apps and so forth are not easy to handle.
Data traffic, user authentication, security, capsuling the application into a Docker image are hard to do.
You basically have to learn a new operating system and there are often so many abstractions that it is hard to find out what did go wrong and when.

\figenvsource{Notes on Cloud deployment.}{/assets/pages/remote-computing/cloud/meme.png}{}{https://www.reddit.com/media?url=https%3A%2F%2Fpreview.redd.it%2Fswitchtok8snow-v0-md967r97muyb1.jpg%3Fauto%3Dwebp%26s%3Dea7d90420c70472abf21a6830a1807d22b1e1bea}
