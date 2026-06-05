process FASTQC {

    publishDir "results/fastqc", mode: 'copy'

    tag "$reads"

    input:
    path reads

    output:
    path "*_fastqc.html"
    path "*_fastqc.zip"

    script:
    """
    fastqc $reads
    """
}
