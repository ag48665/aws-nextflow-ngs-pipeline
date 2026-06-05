nextflow.enable.dsl=2

include { FASTQC } from './modules/fastqc'

workflow {
    reads = Channel.fromPath("data/*.fq")
    FASTQC(reads)
}
