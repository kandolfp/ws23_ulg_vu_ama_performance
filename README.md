# ULG Data Science - WS23 971007 VU Advanced Methods and its Applications - Performance topics

Course material for a ~4+4 hours introductory course to Julia. Topics: Parallel Programming and further topics on high performance computing

# Citing this software
[Citation information](CITATION.cff)

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.10514500.svg)](https://doi.org/10.5281/zenodo.10514499)

# Development
We use [Franklin.jl](https://franklinjl.org) to generate the lecture material.
To do so, simply activate the environment, use Franklin and run the local server:
```
activate .
using Franklin
serve()
```
or run `julia start.jl` for the main directory.

To update the material edit the `md` files in `pages/`.
The main landing page can be found in `index.md`.

To add a new subpage, create a new `md` file and save it at the appropriate place within the subdirectory structure `pages/`.
Additionally the file needs to be added to the navigation bar which can be achieved by updating `_layout/pgwrap.html`.

Have a look at the documentation of [Franklin.jl](https://franklinjl.org) for more information (use the search box to easily find what you are looking for).
Additionally you may consult the [demos](https://franklinjl.org/demos/) page.

# Publishing
After pushing the published website will automatically be built and deployed at [kandolfp.github.io/ws23_ulg_vu_ama_performance](https://kandolfp.github.io/ws23_ulg_vu_ama_performance/) (this might need a couple of minutes).