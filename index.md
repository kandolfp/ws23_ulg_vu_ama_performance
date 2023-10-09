@def title = "WS23 971007 VU Advanced Methods and its Applications - Julia"
@def tags = ["syntax", "code"]

# Preface

@@important
THIS WORKSHOP IS STILL UNDER CONSTRUCTION AND ACTIVE DEVELOPMENT.
@@
# Getting started with Julia

Julia is a free and open source scientific programming language with a vast ecosystem of libraries that aim towards scientific computing. Visit [julialang.org](https://julialang.org) for the download, documentation, learning materials and much more. Julia manages to allow the best of two worlds, high-level interpreter and low-level compiler language. It offers the high performance of compiled languages like C or Fortran by still bringing in the simplicity of dynamic languages like Python or R. Julia recently entered its teens and for this occasion a blog post was published with the title [Why We Use Julia, 10 Years Later](https://julialang.org/blog/2022/02/10years/) as a follow up to the [Why We Created Julia](https://julialang.org/blog/2012/02/why-we-created-julia/). Both entries are a good read and give you an insight into the language and its creators.

In this workshop we are going to take a look at Julia for multi processor programming, if you are looking for a more basic start we recommend [Scientific Coding with Julia](https://noxthot.github.io/ss22_julia_workshop/)

## Acknowledgment

This notes are based on the Julia Workshop designed the [Doctoral College Computational Interdisciplinary Modelling (DK CIM)](https://www.uibk.ac.at/dk-cim/index.html.en) and especially the section about [Parallel Computing](https://noxthot.github.io/ss22_julia_workshop/pages/hpc/). 

## Some general words on the organization of this workshop

For this workshop you do not need to be an Julia expert, not even a programming expert. We will introduce programming and Julia concepts along with examples. For this purpose you will find code blocks that you can copy if necessary (top right corner `copy`). Furthermore, if we think something is very important we will highlight it with a box:

@@important
Pay extra attention to the content here.
@@

We also have various environments with different color coding that usually are collapsed to not hinder the reading process:
- Examples are green
\example{Examples are also quite nice because they make sure you have an idea what is happening.}
- Exercises are blue
\exercise{Exercises are here for you to work on, no worries not at home or in your off hours but with us in the workshop.

[//]: # (Some exercises will have *hidden* solutions which can be accessed by adding `?solution=true` to the URL of the page. 
This way it is more likely that everybody tries to do the exercises without first looking at the sample solution.)}

That is about all we wanted to let you know, so let us get into it.
