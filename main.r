#hand = player gets 2 cards
#flop = 3 cards revealed
#turn = 1 more card revealed
#river = 1 more card reveal, final card

cards <- matrix(2:14, nrow = 13, ncol = 4)               #creating a matrix with 52 values, the column(4) are suits, the rows(13) are card values
colnames(cards) <- c("♥hearts♥", "♠spades♠", "♦diamonds♦", "♣clubs♣")
rownames(cards) <- c(2:10, "jack", "queen", "king", "aces")

checkhigh<- 0

#deal hand############################################################################################
######################################################################################################
user.input <- function(prompt) {

  if (interactive()) {
    return(readline(prompt))}
  else {cat(prompt)
       return(readLines("stdin",n=1))
       }
  }

x <- ""
while(!(x %in% c("yes", "y"))) {
 
  x <-user.input("are you ready to deal your hand? enter 'yes' or 'y' when ready: ") 
   print(x)
 if (!(x %in% c("yes", "y"))) {
   print("thats not valid")
   }
}

hand_face <- sample(rownames(cards),1)    #gets the first of 2 cards in the hand, which is the row names in the matrix "cards"
hand_suit <- sample(colnames(cards),1)    #gets the suit, which is the column names in the matrix "cards"

handdisplay <- c(hand_face,hand_suit)
cards[hand_face,hand_suit] <- 0                   #sets the value to 0, for which ever card comes up, in the matrix

while (cards[hand_face,hand_suit]==0){             #scans for 0s so previously drawn hands will not be drawn again 
                                    #since they are set to 0 in the previous line
hand_face <- sample(rownames(cards),1)

hand_suit <- sample(colnames(cards),1)

}

handdisplay <- c(hand_face,hand_suit, handdisplay)   #gets the 2nd card/suit of the hand

print("your HAND is: ")
message("---->   ",handdisplay[1], " of ",handdisplay[2],"   <----")
message("---->   ",handdisplay[3], " of ",handdisplay[4],"   <----")

cards[hand_face,hand_suit] <- 0


source("checkfold.R")

#flop############################################################################################
#################################################################################################
user.input <- function(prompt) {

  if (interactive()) {
    return(readline(prompt))}
  else {cat(prompt)
       return(readLines("stdin",n=1))
       }
  }

x <- ""
while(!(x %in% c("yes", "y"))) {
 
  x <-user.input("are you ready for the FLOP? enter 'yes' or 'y' when ready: ") 
   print(x)
 if (!(x %in% c("yes", "y"))) {
   print("thats not valid")
   }
}


#flopcard1#########################
flop1 <- sample(rownames(cards),1)
flopsuit1 <- sample(colnames(cards),1)

while (cards[flop1,flopsuit1]==0){            #scans for 0s, 0s mean that the card has been drawn before so it cant be drawn again
  
flop1 <- sample(rownames(cards),1)
flopsuit1 <- sample(colnames(cards),1)
}

cards[flop1,flopsuit1] <- 0     #sets the value to 0, for which ever card comes up, in the matrix

flopdisplay <- c(flop1,flopsuit1)

#flopcard2#########################
flop2 <- sample(rownames(cards),1)
flopsuit2 <- sample(colnames(cards),1)

while (cards[flop2,flopsuit2]==0){
  
flop2 <- sample(rownames(cards),1)
flopsuit2 <- sample(colnames(cards),1)
}
cards[flop2,flopsuit2] <- 0                 #sets the value to 0, for which ever card comes up, in the matrix

flopdisplay <- c(flopdisplay, flop2,flopsuit2)

#flopcard3#########################
flop3 <- sample(rownames(cards),1)
flopsuit3 <- sample(colnames(cards),1)

while (cards[flop3,flopsuit3]==0){
  
flop3 <- sample(rownames(cards),1)
flopsuit3 <- sample(colnames(cards),1)
}

cards[flop3,flopsuit3] <- 0                  #sets the value to 0, for which ever card comes up, in the matrix

flopdisplay <- c(flopdisplay, flop3,flopsuit3)

print("the FLOP is: ")

message("---->   ",flopdisplay[1], " of ",  flopdisplay[2],"   <----")
message("---->   ",flopdisplay[3], " of ", flopdisplay[4],"   <----")
message("---->   ",flopdisplay[5], " of ", flopdisplay[6],"   <----")

#now 5 cards have been shown, their values should all be 0 in the card matrix, remove hashtag below to see if it is the case

#cards 

#test for matches in flopppppp###########################################################################################################
##########################################################################################################################

source("matches_in_flop")

#fold check############################################################################################

source("checkfold.R")

#the turn############################################################################################
#################################################################################################
user.input <- function(prompt) {

  if (interactive()) {
    return(readline(prompt))}
  else {cat(prompt)
       return(readLines("stdin",n=1))
       }
  }

x <- ""
while(!(x %in% c("yes", "y"))) {
 
  x <-user.input("are you ready for the TURN? enter 'yes' or 'y' when ready: ") 
   print(x)
 if (!(x %in% c("yes", "y"))) {
   print("thats not valid")
   }
}

turn <- sample(rownames(cards),1)
turnsuit <- sample(colnames(cards),1)

while (cards[turn,turnsuit]==0){
  
turn <- sample(rownames(cards),1)
turnsuit <- sample(colnames(cards),1)
}

cards[turn,turnsuit] <- 0                  #sets the value to 0, for which ever card comes up, in the matrix

turndisplay <- c(turn,turnsuit)

print("the TURN is: ")

message("---->   ",turndisplay[1], " of ",  turndisplay[2],"   <----")

#cards  #remove to test, the matrix should now have 0s for your hand as well as the cards revealed so far

source("checkfold.R")

#the riverr############################################################################################
#################################################################################################
user.input <- function(prompt) {

  if (interactive()) {
    return(readline(prompt))}
  else {cat(prompt)
       return(readLines("stdin",n=1))
       }
  }

x <- ""
while(!(x %in% c("yes", "y"))) {
 
  x <-user.input("are you ready for the RIVER? enter 'yes' or 'y' when ready: ") 
   print(x)
 if (!(x %in% c("yes", "y"))) {
   print("thats not valid")
   }
}

river <- sample(rownames(cards),1)
riversuit <- sample(colnames(cards),1)

while (cards[river,riversuit]==0){
  
river <- sample(rownames(cards),1)
riversuit <- sample(colnames(cards),1)
}

cards[river,riversuit] <- 0                  #sets the value to 0, for which ever card comes up, in the matrix

riverdisplay <- c(river,riversuit)

print("the RIVER is: ")
message("---->   ",riverdisplay[1], " of ",  riverdisplay[2],"   <----")

#cards  #remove to test, the matrix should now have 0s for the cards corresponding to your hand as well as the flop,turn, and river


#test for matches in total cards revealed###########################################################################################################
##########################################################################################################################

source("matchesTOTAL")

#test for flush in all cards revealed################## flush is 5 of the same suit

source("flush")

#test for straight #########################################################################################################################
############################################################################################################################################
#straight is 5 consecutive cards like 2,3,4,5,6 or 10,j,q,k,a

source("straight")

#high card
source("highcard")

cards  # <--remove to test, the matrix should now have 0s for the cards corresponding to your hand as well as the flop,turn, and river
print("the matrix should now have 0s for the cards corresponding to your hand as well as the flop,turn, and river, 7 total 0s")