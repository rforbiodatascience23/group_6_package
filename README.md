CentralDogmaMD
================

<!-- README.md is generated from README.Rmd. Please edit that file -->

Group 06: Laura Casanovas (s222798), Víctor Fiérrez (s223196), Javier Lopez (s223237), Marina Sangés (s223690), Pablo Sánchez-Izquierdo (s222803)

## GitHub Repository link:

https://github.com/rforbiodatascience23/group_6_package/tree/master

```{r setup}
library(CentralDogmaMD)
```

## Breef description of CentralDogmaMB

The package created has the ability to generate random DNA chains of a specific size, transform DNA to RNA (transcribe), extract the codons, translate to amino acids and finally, create a bar plot showing the aa counts.

### Function 1: SampleDNA

It generates a random DNA sequence of a specific size that is provided by the user.

```{r}
size <- 40
DNA_sample <- SampleDNA(size)
print(DNA_sample)
```
### Function 2: TranscriptionDNA

It transcribes the DNA chain to RNA chain. It basically changes the Timines (T) to Uracils (U).

```{r}
RNA_sample <- TranscriptionDNA(DNA_sample)
print(RNA_sample)
```
### Function 3: Codon extraction

It creates a vector containing the codons from our RNA sample.

```{r}
codons_sample <- CodonExtraction(RNA_sample)
print(codons_sample)
```
### Function 4: Translation

It is used for translating the codons to amino acids to create the peptide chain. Before calling the function, we need to create a dictionary that translates the codons to amino acids. It is stored in "codons" object.

```{r}
peptide_sample <- ConcatenateCodons(codons_sample)
print(peptide_sample)
```
### Function 5: Plot AA

It represents with a bar plot the amino acid counts of the peptide chain.

```{r}
bar_plot <- PlotAA(peptide_sample)
bar_plot
```

## Discussion (Task 3)

Everyone is responsible for function five. It is possible to see in the PlotAA function that the pattern setis::use_package(“package_name”) is used for both stringr and ggplot: p. e. stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) and ggplot2::geom_col(). This structure will allow you to use characteristics from other packages inside your own.

There are multiple reasons why using dependencies in your own package can become problematic. Some packages can have compatibility problems with each other when using different functions, a license for the package usage can be required, updating issues, and so on, can be faced when using different dependencies. On the other hand, creating a whole package from scratch (functions, visualization tools, and so on) can be unviable, so using some dependencies is unavoidable. 

The function @import explains what functions inside the package are from a different package (dependencies), but, on the other hand, the package::function() calls the function from the other package directly to the script of the self-created package.

This package can be used to translate a random DNA sample generated from scratch using a specific number of nucleotides. After several steps, you can finally show the amino acid counts of the translated peptide chain in a bar plot. Other useful functions can be codon extraction from a different reading frame (not starting from one) or plotting amino acid distributions based on chemical properties (first create a dictionary that stores the chemical property for each amino acid).

