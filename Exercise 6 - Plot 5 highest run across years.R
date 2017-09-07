theurl <- getURL("http://stats.espncricinfo.com/ci/content/records/284248.html",.opts = list(ssl.verifypeer = FALSE) )
tables <- readHTMLTable(theurl)
tables[[1]]
highest_score <- tables[[1]]$HS
highest_score_charector <- as.character(highest_score)
tables[[1]]$score_edited <- gsub("[\\*-]", "", highest_score_charector) #Gsub is used to substitute a given pattern with a particular string.
#Here the notout sign (*) is substittuted with null ("")
tables[[1]]
arranging_list_decreasing_order_score<-order(tables[[1]]$score_edited,decreasing=TRUE)
frame <- tables[[1]]

list_after_arranging_score <- frame[arranging_list_decreasing_order_score,]
list_after_arranging_score$Year[1:5]
list_after_arranging_score$score_edited[1:5]


#Using regular expression to get the string out( country name) from the name of the player. We need to use "regmatches" in 
conjoint with "regexpr". We will use the countryname to make another column of coutrries alongside the players.

m <- regexpr("\\((.*?)\\)", tables[[1]]$Player, perl=TRUE)
regmatches(tables[[1]]$Player, m)
tables[[1]]$CountryName <- regmatches(tables[[1]]$Player, m)
