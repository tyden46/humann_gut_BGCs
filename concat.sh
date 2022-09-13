for name in *.gbk
do
    printf ">" >> allFasta.fasta
    printf $name >> allFasta.fasta
    cat $name | awk '/^ACCESSION   / {printf("%s\n",$2);next;} /^ORIGIN/ {inseq=1;next;} /^\/\// {inseq=0;} {if(inseq==0) next; gsub(/[0    -9 ]/,"",$0); printf("%s\n",$0);}' >> allFasta.fasta
done
