# rlexswesent

An R-package for the Swedish sentiment lexicon from Språkbanken. The package contain the Swedish Sentiment lexicon in R data format together with functionality to convert the data to a tidy format.

The original data can be found [here](https://spraakbanken.gu.se/eng/resource/sentimentlex).

If used, please cite:
Nusko, Bianka, Nina Tahmasebi, and Olof Mogren. "Building a Sentiment Lexicon for Swedish." Digital Humanities 2016. From Digitization to Knowledge 2016: Resources and Methods for Semantic Processing of Digital Works/Texts, Proceedings of the Workshop, July 11, 2016, Krakow, Poland. No. 126. Linköping University Electronic Press, 2016.

# Installation

To install the package:

```
> devtools::install_github("MansMeg/rlexswesent")
```

# Load data

To load data into the R session:

```
> data("swesent", package = "rlexswesent")
> swesent

# A tibble: 2,068 × 11
           word polarity strength           sense     written_form
          <chr>   <fctr>    <int>           <chr>            <chr>
1       luguber      neg       -2      luguber..1      ['luguber']
2    överraskad      pos        2                                 
3    förbittrad      neg       -2   förbittrad..1   ['förbittrad']
4     fördystra      neg       -2    fördystra..1    ['fördystra']
5    beräknande      pos        2   beräknande..1   ['beräknande']
6        krossa      neg       -2       krossa..1       ['krossa']
7  olyckligtvis      neg       -2 olyckligtvis..1 ['olyckligtvis']
8     inadekvat      neg       -2    inadekvat..1    ['inadekvat']
9           dum      neg       -2          dum..3          ['dum']
10    skadeglad      pos        2    skadeglad..1    ['skadeglad']
# ... with 2,058 more rows, and 6 more variables: part_of_speech <fctr>,
#   confidence <dbl>, lemgram <chr>, lemgram_frequency <int>,
#   lemma_frequency <chr>, example <chr>
```

