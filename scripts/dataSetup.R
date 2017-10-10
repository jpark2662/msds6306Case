# MSDS 6306 Case Study 01
#
# data setup and log environment()
#
# This is an external R script to setup data
# 

## @knitr variablesGitHubFiles

library(RCurl)

github_file_1 <- "https://raw.githubusercontent.com/rhendrickson42/msds6306Case/master/data/Breweries.csv"
github_file_2 <- "https://raw.githubusercontent.com/rhendrickson42/msds6306Case/master/data/Beers.csv"

## @knitr variables beersBreweries

breweries <- read.csv(text = getURL(github_file_1), header = TRUE, sep = ",")
beers <- read.csv(text = getURL(github_file_2), header = TRUE, sep = ",")

# tidy the data
# 
# TODO - remove strange characters seen in dataframe, whitespace, view data, verify #001 Golden Amber Lager beer name
# from str(beer_world), also " AL", " AR", etc.

colnames(breweries)[1] <- "Brewery_id"
breweries$Name <- trimws(breweries$Name)
breweries$State <- trimws(breweries$State)

# note - to run from cmd line
# "c:\Program Files\R\R-3.4.1\bin\Rscript.exe" -e "library(knitr); knit('Case_Study_01_Beers.Rmd')


# log bibliography info
#
# TODO note- testing where to put bibliographies and citations (some ideas)
# probably at end of Rmarkdown as described in Bibliography placement
# http://rmarkdown.rstudio.com/authoring_bibliographies_and_citations.html#bibliography_placement

# https://stats.idre.ucla.edu/other/mult-pkg/faq/general/faq-how-do-i-cite-web-pages-and-programs-from-the-ucla-statistical-consulting-group/
# https://stats.idre.ucla.edu/r/faq/how-can-i-explore-different-smooths-in-ggplot2/

# http://rmarkdown.rstudio.com/authoring_bibliographies_and_citations.html

# info on how to separate documents
# https://yihui.name/knitr/demo/externalization/
# https://github.com/yihui/knitr-examples



# log environment
sessionInfo()
