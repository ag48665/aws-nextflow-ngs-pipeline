process FASTQC {

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
