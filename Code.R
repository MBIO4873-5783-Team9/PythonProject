library(Rsubread)

bamfile <- list.files(pattern = ".bam$", full.names = TRUE)

Counts <- featureCounts(files=bamfile, annot.ext = "Newman1.gtf", isGTFAnnotationFile = TRUE, GTF.featureType = "gene")

write.csv(Counts[1:2], "counts.csv", quote=FALSE, row.names=FALSE)
