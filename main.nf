nextflow.enable.dsl=2

include { FASTQC as FASTQC_RAW } from './modules/fastqc'
include { FASTQC as FASTQC_TRIMMED } from './modules/fastqc'
include { TRIMGALORE } from './modules/trimgalore'

workflow {

    reads = Channel.fromPath("data/*.fq")

    FASTQC_RAW(reads)

    trimmed = TRIMGALORE(reads)

    FASTQC_TRIMMED(trimmed)
}
