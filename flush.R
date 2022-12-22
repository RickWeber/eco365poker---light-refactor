#test for flush in all cards revealed##################
check_for_flush <- function(hand){
  suits_in_hand <- sapply(hand, function(c) c[1])
  max(table(suits_in_hand)) == 5
}

check_for_flush(testtotal)

# Old code:
#ttt <- "♥hearts♥"
#sss<- length(testtotal)
#counter <- 0
#for (i in 1:sss){
#  if(testtotal[i] == ttt){
#    counter <- counter + 1
#  }
#  if (counter == 5){
#    checkhigh<- 99
#    message("CONGRATS!")
#    cat("you got a flush in: ", ttt)
#  }
#}
#
#ttt <- "♠spades♠"
#sss<- length(testtotal)
#counter <- 0
#for (i in 1:sss){
#  if(testtotal[i] == ttt){
#    counter <- counter + 1
#  }
#  if (counter == 5){
#    checkhigh<- 99
#    message("CONGRATS!")
#    cat("you got a flush in: ", ttt)
#  }
#}
#
#ttt <- "♦diamonds♦"
#sss<- length(testtotal)
#counter <- 0
#for (i in 1:sss){
#  if(testtotal[i] == ttt){
#    counter <- counter + 1
#  }
#  if (counter == 5){
#    checkhigh<- 99
#    message("CONGRATS!")
#    cat("you got a flush in: ", ttt)
#  }
#}
#
#ttt <- "♣clubs♣"
#sss<- length(testtotal)
#counter <- 0
#for (i in 1:sss){
#  if(testtotal[i] == ttt){
#    counter <- counter + 1
#  }
#  if (counter == 5){
#    checkhigh<- 99
#    message("CONGRATS!")
#    cat("you got a flush in: ", ttt)
#  }
#}
#