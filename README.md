# snakeCHIPmatrixHeatmap
Snakemake pipeline that creates heatmaps using deeptools for scores associated with genomic regions, after generating required matrix

# Before running
In the `config.yaml` file you should include details of samples to be analyzed and parameters for obtaining the required matrix and plot using deeptools. Refer deeptools documentation for further details.(https://deeptools.readthedocs.io/en/develop/content/tools/plotHeatmap.html)


### Dependiencies
* [snakemake](https://snakemake.readthedocs.io/en/stable/)
* [deeptools](https://deeptools.readthedocs.io/en/develop/index.html)

# How to run?
```bash
Dry run: snakemake -n
Actual run: snakemake --cores [number of cores]

Run snakemake --unlock if directory is locked
```
