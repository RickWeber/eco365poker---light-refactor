#test for flush in all cards revealed##################
check_for_flush <- function(hand){
  suits <- c("♥hearts♥", "♠spades♠", "♣clubs♣", "♦diamonds♦")
  for(suit in suits){
    count_with_this_suit = sum(sapply(hand, function(c) c == suit))
    if(count_with_this_suit >= 5){
      message("You have a flush in:", suit)
    }
  }
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