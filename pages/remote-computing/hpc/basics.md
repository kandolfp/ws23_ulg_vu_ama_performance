@def title = "Remote Computing - High Performance Computing - Basics"
@def hascode = true

@def tags = ["Remote Computing", "High Performance Computing", "Basics"]

# Basics
\toc

## Tiering

Usually we classify HPC Systems in different tiers,
\figenv{Tiering structure for (high performance) computing systems.}{/assets/pages/remote-computing/hpc/tiering.svg}{}
most of the time illustrated with a pyramid. 

As indicated on the side the idea is that the computing power rises when moving up the pyramid while availability of such systems decreases. 

A list of the most powerful HPC Systems or Supercomputers of the world is the [Top500](https://www.top500.org/) where [Frontier](https://www.top500.org/system/180047/) reached the Exaflop mark. In Europe [Lumi](https://www.lumi-supercomputer.eu/) is the fastest (global #3) with 309 Petaflops.

\figenvsource{Performance of supercomputers in flops over time.}{/assets/pages/remote-computing/hpc/flopsvstime.svg}{}{https://en.wikipedia.org/wiki/FLOPS#/media/File:Supercomputer_Power_(FLOPS),_OWID.svg}

Before we talk about how these systems achieve astonishing performance we discuss how the performance is measured

## What are flops and how are they measured

Flops or **floating point operations per second** is the usual measure of performance used here, as floating point operations are the building blocks of most compute intense workloads.
It is usually much more reliable than _instructions per seconds_. 

Needless to say, the prefix _exa_ corresponds to $10^{18}$.

For comparison, a current Intel or AMD CPU with 16 Cores will have about 220 Gflops, a recent apple watch about 3 Gflops, and the Intel Pentium II 0.4 Gflops (released 1999).

We already peeked into BLAS and LAPACK before, but they come into play here again.
In order to create the [Top500](https://www.top500.org/) list, or more precisely, in order to get your supercomputer on the list, you run the **[HPL](https://www.netlib.org/benchmark/hpl/) - A Portable Implementation of the High-Performance Linpack Benchmark for Distributed-Memory Computers**.

> **HPL** is a software package that solves a (random) dense linear system in double precision (64 bits) arithmetic on distributed-memory computers. It can thus be regarded as a portable as well as freely available implementation of the High Performance Computing Linpack Benchmark.

Of course there are a lot of factors that can potentially influence this performance and we are going to look into ways to maximize it when we look into the architecture. 

Before we do that, we also want to mention, that the _double precision (64 bit)_ here is of importance.
As we have learned, the performance of GPUs highly depends on the used precision so this benchmark will only be one part of how the system _performs_.

Nevertheless, this benchmark or its predecessors have been around for a very long time and nobody has come up with a better way to measure performance so the number does represent a reliable and standardized way to measure performance. 
