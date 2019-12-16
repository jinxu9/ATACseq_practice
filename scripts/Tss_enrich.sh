module load samtools
for file in `ls process/*/*/*.sort.bam`
do

samtools index $file
python /public/home/jinxu/pipeline_perl/ATAC-seq-perl-jin/Code/pyMakeVplot.py -a $file -b /public/home/jinxu/DB/Anser_cygnoides/GCF_000971095.1_AnsCyg_PRJNA183603_v1.0_genomic.Tss  -p ends -e 2000 -u -v  -o  $file.TSSenrich

done
