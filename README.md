# nf-fractal-demo

This is a demo repository demostrating a minimal pipeline that uses Fractal tasks in nf-core-compatible Nextflow .
Explicitely, two Fractal tasks (fractal/cellpose, fractal/thresholding)were wrapped into Nextflow following nf-core standard.

# How to run
Make sure you've filled in the configuration file correctly.
```
nextflow run workflows/main.nf -params-file params.yaml
```
