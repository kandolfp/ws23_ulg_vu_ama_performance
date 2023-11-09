@def title = "WS23 971007 VU Advanced Methods and its Applications - Julia"
@def tags = ["syntax", "code"]

# Preface

@@important
THIS WORKSHOP IS STILL UNDER CONSTRUCTION AND ACTIVE DEVELOPMENT.
@@
# Getting started with Julia

Julia is a free and open source scientific programming language with a vast ecosystem of libraries that aim towards scientific computing.
Visit [julialang.org](https://julialang.org) for the download, documentation, learning materials and much more.
Julia manages to allow the best of two worlds, high-level interpreter and low-level compiler language.
It offers the high performance of compiled languages like C or Fortran by still bringing in the simplicity of dynamic languages like Python or R.
Julia recently entered its teens and for this occasion a blog post was published with the title [Why We Use Julia, 10 Years Later](https://julialang.org/blog/2022/02/10years/) as a follow up to the [Why We Created Julia](https://julialang.org/blog/2012/02/why-we-created-julia/).
Both entries are a good read and give you an insight into the language and its creators.

In this workshop we are going to take a look at Julia for multi processor programming, if you are looking for a more basic start we recommend [Scientific Coding with Julia](https://noxthot.github.io/ss22_julia_workshop/).

## Acknowledgment
The foundation of these notes is based on parts of our Julia Workshop which was given at the [Doctoral College Computational Interdisciplinary Modelling (DK CIM)](https://www.uibk.ac.at/dk-cim/index.html.en).
This lecture will dive a bit deeper than we did in the section [Parallel Computing](https://noxthot.github.io/ss22_julia_workshop/pages/hpc/).

## Some general words on the organization of this workshop
You will find code blocks that you can copy if necessary (top right corner `copy`).
Furthermore, if we think something is very important we will highlight it with a box:

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

## Setup

@@important
We ask you to install Julia, Visual Studio Code (optional) and the Julia extension for Visual Studio Code (optional) **before** the lecture so we can start right away.
If you have difficulties please let us know and we will update the contents of this page accordingly.
@@

@@important
This lecture was prepared with Julia v1.9.3
@@

Follow the setup in this section to install everything that is required to get started.

### Julia

To install Julia on your system please download the latest stable binary from [Setup Download](https://julialang.org/downloads/) and follow the instructions on [Setup Julia](https://julialang.org/downloads/platform/) for the installation.

Under the above link you will also find instructions on how to uninstall Julia, even though we are quite sure you will not want to do it ;).

Alternatively you can also use [juliaup](https://github.com/JuliaLang/juliaup) to install and use Julia.
This handy little gadget allows for automatic updates as well as easy parallel installation of and switching between different Julia versions.

#### Additional information for Linux:

Some distributions allow for Julia to be installed via the package manager or software center.
Note that very often this is an old version so this method is not recommended.

A very convenient way to manage your Julia installation is [juliaup](https://github.com/JuliaLang/juliaup).
To install this tool, simply call the following command from your terminal:
```bash
curl -fsSL https://install.julialang.org | sh
```

Once installed, simply reopen your terminal and call `juliaup add 1.9.3` to add the very version used for this course.
In case you installed Julia just for this course, you could then set
```bash
juliaup default 1.9.3
```
to pin your default version to `1.9.3` whenever you start `julia`.
Alternatively you can launch this specific version by calling `julia +1.9.3`.


### Visual Studio Code

Installing Visual Studio Code is optional since one can use any editor for programming in Julia but Visual Studio Code (+plugin) is
the most common "Julia IDE".
For example [JuliaEditorSupport](https://github.com/JuliaEditorSupport) has plugins for some alternative editors.

Follow the instructions on [https://code.visualstudio.com/](https://code.visualstudio.com/) to install Visual Studio Code.

Visual Studio Code, also commonly referred to as VS Code, is a fully-fledged interactive development environment (IDE), complete with code highlighting, autocomplete, debugger, Git integration and much more.
In order to make VS Code fully compatible with Julia we need to install the Julia extension.

### Installing the Julia extension for VS Code

Follow the instructions on [VS Code Julia extension](https://www.julia-vscode.org/docs/dev/gettingstarted/#Installing-the-Julia-extension) to install and configure the extension.
You can find the basic instructions from above here as well.

\exercise{Please run the minimal working example from [here](https://www.julia-vscode.org/docs/dev/gettingstarted/#Creating-Your-First-Julia-Hello-World-program) to see whether you have set up everything correctly.}

If you run into difficulties with VS Code in connection with Julia, the [documentation](https://www.julia-vscode.org/docs/dev/) of the Julia extension is an excellent source for help.

## Julia and VS Code

There is no better resource than [https://www.julia-vscode.org](https://www.julia-vscode.org) to explain how to program in Julia with VS Code.
The website also provides an interactive view of some of the following concepts.

- On the left you have the navigational panel where you can switch between context of the viewer.
- Specifically you will need the **Explorer** and **Julia**.
- Right next to it you get additional information with regards to the current context.
- For example you will see files, when you are in **Explorer** or you see your _Workspace_, _Documentation_, and _Plot Navigation_ in the **Julia** context.
- When opening a Julia file (ending in `.jl`) (double click in the **Explorer** - single click only gives you a quick view and the file will not stay open if you click another file) you have syntax highlighting and autocomplete right away.
- To run a Julia program, click the small arrow on the top left or `Ctrl+F5` if you prefer keyboard shortcuts.
- Both will run the code in the Julia REPL.
- You will see the output on the bottom.

With these short basics and [https://www.julia-vscode.org](https://www.julia-vscode.org) you are good to go for the lecture.
You can also find a list of [keybindings](https://www.julia-vscode.org/docs/dev/userguide/keybindings/) once you are more familiar with the IDE and never want to get your hands off the keyboard.

In VS Code you can always type `CTRL + SHIFT + P` to get access to the prompt and execute commands within VS Code.