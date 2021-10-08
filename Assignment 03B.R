library(here)
library(tidyverse)

results <- read_csv(here("Data","PRESIDENT_precinct_general.zip"))
#results <- read_csv("Data","Users/jonathanaidlberg/Downloads/BIS-044-AIDLBERGJONATHAN/Data/PRESIDENT_precinct_general.csv")
BIDEN <- 0
TRUMP <- 0
COUNTER <- 0
END <- length(results$votes)

for (i in 1:END) {
  if (results$candidate[i] == "JOSEPH R BIDEN") {
    BIDEN <- results$votes[i] + BIDEN
    
  }
  else if (results$candidate[i] == "DONALD J TRUMP") {
    TRUMP <- results$votes[i] + TRUMP
  }
  else {}
  # Following is just to give "visual feedback"  
  if (round(i/END*100, digits = 0) > COUNTER) {
    COUNTER <- round(i/END*100, digits = 0)
    cat(COUNTER,"pct complete\n")}
}

cat ("Number of votes for Biden: ", BIDEN, "\n")
cat ("Number of votes for Trump: ", TRUMP)

