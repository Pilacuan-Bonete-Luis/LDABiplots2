#' Shiny UI for LDABiplots package
#'@import shiny
#'@import shinydashboard
#'@import shinyBS
#'@import shinybusy
#'@importFrom shinyjs useShinyjs
#'@importFrom shinyjs disable
#'@importFrom shinyjs enable
#'@importFrom shinyWidgets pickerInput
#'@importFrom shinyWidgets actionBttn
#'@importFrom shinyWidgets prettyCheckbox
#'@importFrom shinyWidgets dropdown
#'@importFrom shinyWidgets switchInput
#'@importFrom shinyWidgets animateOptions
#'@importFrom DT DTOutput
#'@importFrom DT renderDT
#'@importFrom DT datatable
#'@importFrom DT formatRound
#'@importFrom readxl excel_sheets
#'@importFrom readxl read_excel
#'@import dplyr
#'@import highcharter
#'@import beepr
#'@import rvest
#'@importFrom SnowballC wordStem
#'@importFrom chinese.misc m3m
#'@import glasso
#'@import shinyalert
#'@import shinycssloaders
#'@import quanteda
#'@import stringr
#'@import textplot
#'@importFrom tidyr gather
#'@importFrom tidyr spread
#'@import topicmodels
#'@import textreadr
#'@import purrr
#'@importFrom textmineR CreateDtm
#'@importFrom textmineR TermDocFreq
#'@importFrom textmineR TmParallelApply
#'@importFrom textmineR FitLdaModel
#'@importFrom textmineR GetTopTerms
#'@importFrom textmineR LabelTopics
#'@importFrom textmineR CalcHellingerDist
#' @param launch.browser If true, the system's default web browser will be launched automatically
#' after the app is started. Defaults to true in interactive sessions only. This value of
#' this parameter can also be a function to call with the application's URL.
#' @param port is the TCP port that the application should listen on. If the port is not specified,
#' and the shiny.port option is set (with options(shiny.port = XX)), then that port will be used.
#' Otherwise, use a random port.
#' @param host The IPv4 address that the application should listen on.
#' Defaults to the shiny.host option, if set, or "127.0.0.1" if not.
#' @examples
#' if(interactive()){
#' runLDABiplots()
#' }
#' @export


runLDABiplots <- function(host = "127.0.0.1", port = NULL,launch.browser = TRUE) {
  appDir <- system.file("LDABIPLOTSHINY", package = "LDABiplots")
  if (appDir == "") {
    stop("Could not find myapp. Try re-installing `LDABiplots`.", call. = FALSE)
  }

  shiny::runApp(appDir,
                display.mode = "normal",
                launch.browser = launch.browser,
                port = port,
                host = getOption("shiny.host", host)
  )
}
