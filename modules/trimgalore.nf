process TRIMGALORE {

    publishDir "results/trimgalore", mode: 'copy'

    container 'trimgalore:1.0'

    tag "$reads"

    input:
    path reads

    output:
    path "*_trimmed.fq"

    script:
    """
    trim_galore --dont_gzip $reads
    """
}
