
swesent <- dplyr::as_data_frame(read.csv("data-raw/sentimentlex.csv", stringsAsFactors = FALSE))

swesent$polarity <- as.factor(swesent$polarity)
swesent$part_of_speech <- as.factor(swesent$part_of_speech)

devtools::use_data(swesent, overwrite = TRUE)