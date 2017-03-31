#' Return the different written forms as a \code{data_frame}
#'
#' @param swesent The \code{swesent} 
#'
#' @export
tidy_written_form <- function(swesent){
  tidy_written_form <- tidytext::unnest_tokens(swesent[,c("word", "written_form")], written_form, written_form, token = "regex", pattern = "[\\[\\]',]+", to_lower = FALSE)
  tidy_written_form <- tidy_written_form[tidy_written_form$written_form != "", ]
  swe_sent_empty <- swesent[swesent$written_form == "", c("word", "written_form")]
  tidy_written_form <- dplyr::bind_rows(swe_sent_empty, tidy_written_form)
  tidy_written_form <- dplyr::arrange(tidy_written_form, word)
  tidy_written_form
}
