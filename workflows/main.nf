include { FRACTAL_THRESHOLDING } from '../modules/sanger/fractal/thresholding/main'
include { FRACTAL_CELLPOSE } from '../modules/sanger/fractal/cellpose/main'

params.images = [
    [
        ["id": "test2"], //meta channel
        "./20200812-CardiomyocyteDifferentiation14-Cycle1_mip.zarr/B/03/0", //path to the ome-zarr image
        0, //pyramidal level to segment
        "DAPI", //channel to segment
        "test" //output label image name
    ],
]

workflow {
    FRACTAL_THRESHOLDING(channel.from(params.images))
    FRACTAL_CELLPOSE(channel.from(params.images))
}
