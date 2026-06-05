nextflow.enable.dsl=2

process HELLO {

    output:
    path "hello.txt"

    script:
    """
    echo "Bioinformatics pipeline started" > hello.txt
    """
}

workflow {
    HELLO()
}
