module load samtools
for file in `ls */*/*.sort.bam` 
do
perl /public/home/jinxu/pipeline_perl/ATAC-seq-perl-jin/Code/fragment_length_dist.pl  $file $file.fragL.txt
sort -n $file.fragL.txt | uniq -c > $file.frag.sort.txt
Rscript /public/home/jinxu/pipeline_perl/ATAC-seq-perl-jin/Code/fragment_length_dist.R $file.fraL.txt $file.frag.sort.txt $file.fragment_length_distribution.pdf $file.fragment_length_distribution.txt

done
