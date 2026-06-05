process TRIMGALORE {

    publishDir "results/trimgalore", mode: 'copy'

    tag "$reads"

    input:
    path reads

    output:
    path "*_trimmed.fq"

    script:
    """
    cp $reads input.fq

    cat input.fq > trimmed.fq

    mv trimmed.fq ${reads.baseName}_trimmed.fq
    """
}
