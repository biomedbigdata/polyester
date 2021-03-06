% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/model1.R
\docType{data}
\name{model1}
\alias{model1}
\title{Empirical error model for Illumina Genome Analyzer IIx with 
  Illumina Sequencing Kit v4 chemistry, read mate 1 of a pair}
\format{
data frame named \code{model1}, 7 columns, 505 rows
}
\source{
processed from the Illumina v4 error model that ships with GemSIM
  (see references)
}
\description{
for each position in mate 1 of a paired-end read generated with
  the specified Illumina chemistry, this data frame contains the probability
  of not making a sequencing error, and of making each of the 4 possible 
  types of sequencing errors. The reference base (truth) is in column 1, 
  and the probabilities of sequencing that base given its read position 
  (column 7) as each of the 5 possible bases (A, T, G, C, and N) is given
  in columns 2 through 6, respectively. So for example, at position 8 in 
  mate 1 of a read where the true base is A, the probability of correctly
  calling that base an A is 0.9998, the probability of making an error by
  sequencing a T is 2.64e-05, the probability of making an error by
  sequencing a G is 1.58e-04, the probability of making an error by 
  sequencing a C is 3.05e-05, and the probability of reading an 'N' at 
  position 8 is 0. This can be seen by looking at 
  \code{model1[model1$pos == 8,]}. Note that position indexing is 1-based, 
  though a 0 position is included as described in the GemSIM documentation.
}
\references{
McElroy KE, Luciani F, Thomas T (2012). GemSIM: general, 
error-model based simulator of next-generation sequencing data. 
BMC Genomics 13(1), 74.
}
