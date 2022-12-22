#test for flush in all cards revealed##################
check_for_flush <- function(hand){
  suits_in_hand <- sapply(hand, function(c) c[1])
  max(table(suits_in_hand)) == 5
}