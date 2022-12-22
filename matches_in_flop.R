testflop <- c(flopdisplay, handdisplay)  #combines both the hand and the flop

#test for 2s#######################################################################################################
ttt <- 2
sss<- length(testflop)        
counter <- 0
for (i in 1:sss){                        #for loop with 1 to 'the length of how many cards there are so far'
  
  if(testflop[i] == ttt){                #checks for matching cards, in this case 2s, counter keeps track of matches
    counter <- counter + 1
    }
  
  if (counter == 4 ){                                     #if counter is equal to 4 then its a 4 of a kind
    checkhigh<- 1
    message("CONGRATULATIONS!!!")
    cat("you got 4 of a kind in: ", ttt, " ")
    break
  }
  if (counter == 3 & i == length(testflop)){
    checkhigh<- 1
    message("CONGRATS!")
    cat("you got 3 of a kind in: ", ttt, " ")
  }
  if (counter == 2 & i == length(testflop)){
    checkhigh<- 1
     message("congrats")
    cat("you got a pair in: ", ttt, " ")
  }
}
counter <- 0

#test for 3s#######################################################################################################
ttt <- 3
sss<- length(testflop)
counter <- 0
for (i in 1:sss){
  
  if(testflop[i] == ttt){
    counter <- counter + 1
    }
  
  if (counter == 4 ){
    checkhigh<- 1
    message("CONGRATULATIONS!!!")
    cat("you got 4 of a kind in: ", ttt, " ")
    break
  }
  if (counter == 3 & i == length(testflop)){
    checkhigh<- 1
    message("CONGRATS!")
    cat("you got 3 of a kind in: ", ttt, " ")
  }
  if (counter == 2 & i == length(testflop)){
    checkhigh<- 1
     message("congrats")
    cat("you got a pair in: ", ttt, " ")
  }
}
counter <- 0

#test for 4s#######################################################################################################
ttt <- 4
sss<- length(testflop)
counter <- 0
for (i in 1:sss){
  
  if(testflop[i] == ttt){
    counter <- counter + 1
    }
  
  if (counter == 4 ){
    checkhigh<- 1
    message("CONGRATULATIONS!!!")
    cat("you got 4 of a kind in: ", ttt, " ")
    break
  }
  if (counter == 3 & i == length(testflop)){
    checkhigh<- 1
    message("CONGRATS!")
    cat("you got 3 of a kind in: ", ttt, " ")
  }
  if (counter == 2 & i == length(testflop)){
    checkhigh<- 1
     message("congrats")
    cat("you got a pair in: ", ttt, " ")
  }
}
counter <- 0

#test for 5s#######################################################################################################
ttt <- 5
sss<- length(testflop)
counter <- 0
for (i in 1:sss){
  
  if(testflop[i] == ttt){
    counter <- counter + 1
    }
  
  if (counter == 4 ){
    checkhigh<- 1
    message("CONGRATULATIONS!!!")
    cat("you got 4 of a kind in: ", ttt, " ")
    break
  }
  if (counter == 3 & i == length(testflop)){
    checkhigh<- 1
    message("CONGRATS!")
    cat("you got 3 of a kind in: ", ttt, " ")
  }
  if (counter == 2 & i == length(testflop)){
    checkhigh<- 1
     message("congrats")
    cat("you got a pair in: ", ttt, " ")
  }
}
counter <- 0

#test for 6s#######################################################################################################
ttt <- 6
sss<- length(testflop)
counter <- 0
for (i in 1:sss){
  
  if(testflop[i] == ttt){
    counter <- counter + 1
    }
  
  if (counter == 4 ){
    checkhigh<- 1
    message("CONGRATULATIONS!!!")
    cat("you got 4 of a kind in: ", ttt, " ")
    break
  }
  if (counter == 3 & i == length(testflop)){
    checkhigh<- 1
    message("CONGRATS!")
    cat("you got 3 of a kind in: ", ttt, " ")
  }
  if (counter == 2 & i == length(testflop)){
    checkhigh<- 1
     message("congrats")
    cat("you got a pair in: ", ttt, " ")
  }
}
counter <- 0

#test for 7s#######################################################################################################
ttt <- 7
sss<- length(testflop)
counter <- 0
for (i in 1:sss){
  
  if(testflop[i] == ttt){
    checkhigh<- 1
    counter <- counter + 1
    }
  
  if (counter == 4 ){
    checkhigh<- 1
    message("CONGRATULATIONS!!!")
    cat("you got 4 of a kind in: ", ttt, " ")
    break
  }
  if (counter == 3 & i == length(testflop)){
    checkhigh<- 1
    message("CONGRATS!")
    cat("you got 3 of a kind in: ", ttt, " ")
  }
  if (counter == 2 & i == length(testflop)){
    checkhigh<- 1
     message("congrats")
    cat("you got a pair in: ", ttt, " ")
  }
}
counter <- 0

#test for 8s#######################################################################################################
ttt <- 8
sss<- length(testflop)
counter <- 0
for (i in 1:sss){
  
  if(testflop[i] == ttt){
    counter <- counter + 1
    }
  
  if (counter == 4 ){
    checkhigh<- 1
    message("CONGRATULATIONS!!!")
    cat("you got 4 of a kind in: ", ttt, " ")
    break
  }
  if (counter == 3 & i == length(testflop)){
    checkhigh<- 1
    message("CONGRATS!")
    cat("you got 3 of a kind in: ", ttt, " ")
  }
  if (counter == 2 & i == length(testflop)){
    checkhigh<- 1
     message("congrats")
    cat("you got a pair in: ", ttt, " ")
  }
}
counter <- 0

#test for 9s#######################################################################################################
ttt <- 9
sss<- length(testflop)
counter <- 0
for (i in 1:sss){
  
  if(testflop[i] == ttt){
    counter <- counter + 1
    }
  
  if (counter == 4 ){
    checkhigh<- 1
    message("CONGRATULATIONS!!!")
    cat("you got 4 of a kind in: ", ttt, " ")
    break
  }
  if (counter == 3 & i == length(testflop)){
    checkhigh<- 1
    message("CONGRATS!")
    cat("you got 3 of a kind in: ", ttt, " ")
  }
  if (counter == 2 & i == length(testflop)){
    checkhigh<- 1
     message("congrats")
    cat("you got a pair in: ", ttt, " ")
  }
}
counter <- 0

#test for 10s#######################################################################################################
ttt <- 10
sss<- length(testflop)
counter <- 0
for (i in 1:sss){
  
  if(testflop[i] == ttt){
    counter <- counter + 1
    }
  
  if (counter == 4 ){
    checkhigh<- 1
    message("CONGRATULATIONS!!!")
    cat("you got 4 of a kind in: ", ttt, " ")
    break
  }
  if (counter == 3 & i == length(testflop)){
    checkhigh<- 1
    message("CONGRATS!")
    cat("you got 3 of a kind in: ", ttt, " ")
  }
  if (counter == 2 & i == length(testflop)){
    checkhigh<- 1
     message("congrats")
    cat("you got a pair in: ", ttt, " ")
  }
}
counter <- 0

#test for Js#######################################################################################################
ttt <- "jack"
sss<- length(testflop)
counter <- 0
for (i in 1:sss){
  
  if(testflop[i] == ttt){
    counter <- counter + 1
    }
  
  if (counter == 4 ){
    checkhigh<- 1
    message("CONGRATULATIONS!!!")
    cat("you got 4 of a kind in: ", ttt, " ")
    break
  }
  if (counter == 3 & i == length(testflop)){
    checkhigh<- 1
    message("CONGRATS!")
    cat("you got 3 of a kind in: ", ttt, " ")
  }
  if (counter == 2 & i == length(testflop)){
    checkhigh<- 1
     message("congrats")
    cat("you got a pair in: ", ttt, " ")
  }
}
counter <- 0

#test for Qs#######################################################################################################
ttt <- "queen"
sss<- length(testflop)
counter <- 0
for (i in 1:sss){
  
  if(testflop[i] == ttt){
    checkhigh<- 1
    counter <- counter + 1
    }
  
  if (counter == 4 ){
    checkhigh<- 1
    message("CONGRATULATIONS!!!")
    cat("you got 4 of a kind in: ", ttt, " ")
    break
  }
  if (counter == 3 & i == length(testflop)){
    checkhigh<- 1
    message("CONGRATS!")
    cat("you got 3 of a kind in: ", ttt, " ")
  }
  if (counter == 2 & i == length(testflop)){
    checkhigh<- 1
     message("congrats")
    cat("you got a pair in: ", ttt, " ")
  }
}
counter <- 0

#test for Ks#######################################################################################################
ttt <- "king"
sss<- length(testflop)
counter <- 0
for (i in 1:sss){
  
  if(testflop[i] == ttt){
    checkhigh<- 1
    counter <- counter + 1
    }
  
  if (counter == 4 ){
    checkhigh<- 1
    message("CONGRATULATIONS!!!")
    cat("you got 4 of a kind in: ", ttt, " ")
    break
  }
  if (counter == 3 & i == length(testflop)){
    checkhigh<- 1
    message("CONGRATS!")
    cat("you got 3 of a kind in: ", ttt, " ")
  }
  if (counter == 2 & i == length(testflop)){
    checkhigh<- 1
     message("congrats")
    cat("you got a pair in: ", ttt, " ")
  }
}
counter <- 0

#test for As#######################################################################################################
ttt <- "aces"
sss<- length(testflop)
counter <- 0
for (i in 1:sss){
  
  if(testflop[i] == ttt){
    counter <- counter + 1
    }
  
  if (counter == 4 ){
    checkhigh<- 1
    message("CONGRATULATIONS!!!")
    cat("you got 4 of a kind in: ", ttt, " ")
    break
  }
  if (counter == 3 & i == length(testflop)){
    checkhigh<- 1
    message("CONGRATS!")
    cat("you got 3 of a kind in: ", ttt, " ")
  }
  if (counter == 2 & i == length(testflop)){
    checkhigh<- 1
     message("congrats")
    cat("you got a pair in: ", ttt, " ")
  }
}
counter <- 0

#test for flush in flop##################
ttt <- "♥hearts♥"
sss<- length(testflop)
counter <- 0
for (i in 1:sss){
  if(testflop[i] == ttt){
    counter <- counter + 1
  }
  if (counter == 5){
    checkhigh<- 1
    message("CONGRATS!")
    cat("you got a flush in: ", ttt)
  }
}

ttt <- "♠spades♠"
sss<- length(testflop)
counter <- 0
for (i in 1:sss){
  checkhigh<- 1
  if(testflop[i] == ttt){
    counter <- counter + 1
  }
  if (counter == 5){
    checkhigh<- 1
    message("CONGRATS!")
    cat("you got a flush in: ", ttt)
  }
}

ttt <- "♦diamonds♦"
sss<- length(testflop)
counter <- 0
for (i in 1:sss){
  if(testflop[i] == ttt){
    counter <- counter + 1
  }
  if (counter == 5){
    checkhigh<- 1
    message("CONGRATS!")
    cat("you got a flush in: ", ttt)
  }
}

ttt <- "♣clubs♣"
sss<- length(testflop)
counter <- 0
for (i in 1:sss){
  if(testflop[i] == ttt){
    counter <- counter + 1
  }
  if (counter == 5){
    checkhigh<- 1
    message("CONGRATS!")
    cat("you got a flush in: ", ttt)
  }
}
