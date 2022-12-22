#test for flush in all cards revealed##################
ttt <- "♥hearts♥"
sss<- length(testtotal)
counter <- 0
for (i in 1:sss){
  if(testtotal[i] == ttt){
    counter <- counter + 1
  }
  if (counter == 5){
    checkhigh<- 99
    message("CONGRATS!")
    cat("you got a flush in: ", ttt)
  }
}

ttt <- "♠spades♠"
sss<- length(testtotal)
counter <- 0
for (i in 1:sss){
  if(testtotal[i] == ttt){
    counter <- counter + 1
  }
  if (counter == 5){
    checkhigh<- 99
    message("CONGRATS!")
    cat("you got a flush in: ", ttt)
  }
}

ttt <- "♦diamonds♦"
sss<- length(testtotal)
counter <- 0
for (i in 1:sss){
  if(testtotal[i] == ttt){
    counter <- counter + 1
  }
  if (counter == 5){
    checkhigh<- 99
    message("CONGRATS!")
    cat("you got a flush in: ", ttt)
  }
}

ttt <- "♣clubs♣"
sss<- length(testtotal)
counter <- 0
for (i in 1:sss){
  if(testtotal[i] == ttt){
    counter <- counter + 1
  }
  if (counter == 5){
    checkhigh<- 99
    message("CONGRATS!")
    cat("you got a flush in: ", ttt)
  }
}
