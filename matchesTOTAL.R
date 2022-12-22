testtotal <- c(handdisplay, flopdisplay,turndisplay, riverdisplay)  #combines the hand and the flop, turn, river

#testtotal<- c(2,"aces", 3, 4, "aces",10,9)   #remove # and type in your own 7 card combo to see if the matches work
#testtotal

#test for 2s#######################################################################################################
ttt <- 2
sss<- length(testtotal)
counter <- 0
for (i in 1:sss){
  
  if(testtotal[i] == ttt){
    counter <- counter + 1
    }
  
  if (counter == 4 ){
    checkhigh<- 1
    message("CONGRATULATIONS!!!")
    cat("you got 4 of a kind in: ", ttt, " ")
    break
  }
  if (counter == 3 & i == length(testtotal)){
    checkhigh<- 1
    message("CONGRATS!")
    cat("you got 3 of a kind in: ", ttt, " ")
  }
  if (counter == 2 & i == length(testtotal)){
    checkhigh<- 1
     message("congrats")
    cat("you got a pair in: ", ttt, " ")
  }
}
counter <- 0

#test for 3s#######################################################################################################
ttt <- 3
sss<- length(testtotal)
counter <- 0
for (i in 1:sss){
  
  if(testtotal[i] == ttt){
    counter <- counter + 1
    }
  
  if (counter == 4 ){
    checkhigh<- 1
    message("CONGRATULATIONS!!!")
    cat("you got 4 of a kind in: ", ttt, " ")
    break
  }
  if (counter == 3 & i == length(testtotal)){
    checkhigh<- 1
    message("CONGRATS!")
    cat("you got 3 of a kind in: ", ttt, " ")
  }
  if (counter == 2 & i == length(testtotal)){
    checkhigh<- 1
     message("congrats")
    cat("you got a pair in: ", ttt, " ")
  }
}
counter <- 0

#test for 4s#######################################################################################################
ttt <- 4
sss<- length(testtotal)
counter <- 0
for (i in 1:sss){
  
  if(testtotal[i] == ttt){
    counter <- counter + 1
    }
  
  if (counter == 4 ){
    checkhigh<- 1
    message("CONGRATULATIONS!!!")
    cat("you got 4 of a kind in: ", ttt, " ")
    break
  }
  if (counter == 3 & i == length(testtotal)){
    checkhigh<- 1
    message("CONGRATS!")
    cat("you got 3 of a kind in: ", ttt, " ")
  }
  if (counter == 2 & i == length(testtotal)){
    checkhigh<- 1
     message("congrats")
    cat("you got a pair in: ", ttt, " ")
  }
}
counter <- 0

#test for 5s#######################################################################################################
ttt <- 5
sss<- length(testtotal)
counter <- 0
for (i in 1:sss){
  
  if(testtotal[i] == ttt){
    counter <- counter + 1
    }
  
  if (counter == 4 ){
    checkhigh<- 1
    message("CONGRATULATIONS!!!")
    cat("you got 4 of a kind in: ", ttt, " ")
    break
  }
  if (counter == 3 & i == length(testtotal)){
    checkhigh<- 1
    message("CONGRATS!")
    cat("you got 3 of a kind in: ", ttt, " ")
  }
  if (counter == 2 & i == length(testtotal)){
    checkhigh<- 1
     message("congrats")
    cat("you got a pair in: ", ttt, " ")
  }
}
counter <- 0

#test for 6s#######################################################################################################
ttt <- 6
sss<- length(testtotal)
counter <- 0
for (i in 1:sss){
  
  if(testtotal[i] == ttt){
    counter <- counter + 1
    }
  
  if (counter == 4 ){
    checkhigh<- 1
    message("CONGRATULATIONS!!!")
    cat("you got 4 of a kind in: ", ttt, " ")
    break
  }
  if (counter == 3 & i == length(testtotal)){
    checkhigh<- 1
    message("CONGRATS!")
    cat("you got 3 of a kind in: ", ttt, " ")
  }
  if (counter == 2 & i == length(testtotal)){
    checkhigh<- 1
     message("congrats")
    cat("you got a pair in: ", ttt, " ")
  }
}
counter <- 0

#test for 7s#######################################################################################################
ttt <- 7
sss<- length(testtotal)
counter <- 0
for (i in 1:sss){
  
  if(testtotal[i] == ttt){
    counter <- counter + 1
    }
  
  if (counter == 4 ){
    checkhigh<- 1
    message("CONGRATULATIONS!!!")
    cat("you got 4 of a kind in: ", ttt, " ")
    break
  }
  if (counter == 3 & i == length(testtotal)){
    checkhigh<- 1
    message("CONGRATS!")
    cat("you got 3 of a kind in: ", ttt, " ")
  }
  if (counter == 2 & i == length(testtotal)){
    checkhigh<- 1
     message("congrats")
    cat("you got a pair in: ", ttt, " ")
  }
}
counter <- 0

#test for 8s#######################################################################################################
ttt <- 8
sss<- length(testtotal)
counter <- 0
for (i in 1:sss){
  
  if(testtotal[i] == ttt){
    counter <- counter + 1
    }
  
  if (counter == 4 ){
    checkhigh<- 1
    message("CONGRATULATIONS!!!")
    cat("you got 4 of a kind in: ", ttt, " ")
    break
  }
  if (counter == 3 & i == length(testtotal)){
    checkhigh<- 1
    message("CONGRATS!")
    cat("you got 3 of a kind in: ", ttt, " ")
  }
  if (counter == 2 & i == length(testtotal)){
    checkhigh<- 1
     message("congrats")
    cat("you got a pair in: ", ttt, " ")
  }
}
counter <- 0

#test for 9s#######################################################################################################
ttt <- 9
sss<- length(testtotal)
counter <- 0
for (i in 1:sss){
  
  if(testtotal[i] == ttt){
    counter <- counter + 1
    }
  
  if (counter == 4 ){
    checkhigh<- 1
    message("CONGRATULATIONS!!!")
    cat("you got 4 of a kind in: ", ttt, " ")
    break
  }
  if (counter == 3 & i == length(testtotal)){
    checkhigh<- 1
    message("CONGRATS!")
    cat("you got 3 of a kind in: ", ttt, " ")
  }
  if (counter == 2 & i == length(testtotal)){
    checkhigh<- 1
     message("congrats")
    cat("you got a pair in: ", ttt, " ")
  }
}
counter <- 0

#test for 10s#######################################################################################################
ttt <- 10
sss<- length(testtotal)
counter <- 0
for (i in 1:sss){
  
  if(testtotal[i] == ttt){
    counter <- counter + 1
    }
  
  if (counter == 4 ){
    checkhigh<- 1
    message("CONGRATULATIONS!!!")
    cat("you got 4 of a kind in: ", ttt, " ")
    break
  }
  if (counter == 3 & i == length(testtotal)){
    checkhigh<- 1
    message("CONGRATS!")
    cat("you got 3 of a kind in: ", ttt, " ")
  }
  if (counter == 2 & i == length(testtotal)){
    checkhigh<- 1
     message("congrats")
    cat("you got a pair in: ", ttt, " ")
  }
}
counter <- 0

#test for Js#######################################################################################################
ttt <- "jack"
sss<- length(testtotal)
counter <- 0
for (i in 1:sss){
  
  if(testtotal[i] == ttt){
    counter <- counter + 1
    }
  
  if (counter == 4 ){
    checkhigh<- 1
    message("CONGRATULATIONS!!!")
    cat("you got 4 of a kind in: ", ttt, " ")
    break
  }
  if (counter == 3 & i == length(testtotal)){
    checkhigh<- 1
    message("CONGRATS!")
    cat("you got 3 of a kind in: ", ttt, " ")
  }
  if (counter == 2 & i == length(testtotal)){
    checkhigh<- 1
     message("congrats")
    cat("you got a pair in: ", ttt, " ")
  }
}
counter <- 0

#test for Qs#######################################################################################################
ttt <- "queen"
sss<- length(testtotal)
counter <- 0
for (i in 1:sss){
  
  if(testtotal[i] == ttt){
    counter <- counter + 1
    }
  
  if (counter == 4 ){
    checkhigh<- 1
    message("CONGRATULATIONS!!!")
    cat("you got 4 of a kind in: ", ttt, " ")
    break
  }
  if (counter == 3 & i == length(testtotal)){
    checkhigh<- 1
    message("CONGRATS!")
    cat("you got 3 of a kind in: ", ttt, " ")
  }
  if (counter == 2 & i == length(testtotal)){
    checkhigh<- 1
     message("congrats")
    cat("you got a pair in: ", ttt, " ")
  }
}
counter <- 0

#test for Ks#######################################################################################################
ttt <- "king"
sss<- length(testtotal)
counter <- 0
for (i in 1:sss){
  
  if(testtotal[i] == ttt){
    counter <- counter + 1
    }
  
  if (counter == 4 ){
    checkhigh<- 1
    message("CONGRATULATIONS!!!")
    cat("you got 4 of a kind in: ", ttt, " ")
    break
  }
  if (counter == 3 & i == length(testtotal)){
    checkhigh<- 1
    message("CONGRATS!")
    cat("you got 3 of a kind in: ", ttt, " ")
  }
  if (counter == 2 & i == length(testtotal)){
    checkhigh<- 1
     message("congrats")
    cat("you got a pair in: ", ttt, " ")
  }
}
counter <- 0

#test for As#######################################################################################################
ttt <- "aces"
sss<- length(testtotal)
counter <- 0
for (i in 1:sss){
  
  if(testtotal[i] == ttt){
    counter <- counter + 1
    }
  
  if (counter == 4 ){
    checkhigh<- 1
    message("CONGRATULATIONS!!!")
    cat("you got 4 of a kind in: ", ttt, " ")
    break
  }
  if (counter == 3 & i == length(testtotal)){
    checkhigh<- 1
    message("CONGRATS!")
    cat("you got 3 of a kind in: ", ttt, " ")
  }
  if (counter == 2 & i == length(testtotal)){
    checkhigh<- 1
     message("congrats")
    cat("you got a pair in: ", ttt, " ")
  }
}
counter <- 0
