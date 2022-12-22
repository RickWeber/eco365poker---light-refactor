source('setup.R')
# Start game
continue_prompt()

cards <- make_deck()

checkhigh<- 0

initial_deal <- deal_cards(cards, 2, c())
cards <- initial_deal$deck
hand <- initial_deal$hand
display_hand(hand)

source("checkfold.R")

#flop############################################################################################
#################################################################################################

continue_prompt("Are you ready for the flop?")


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
continue_prompt("Are you ready for the turn?")

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
continue_prompt("Are you ready for the river?")

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

source("flush.R")

#test for straight #########################################################################################################################
############################################################################################################################################
#straight is 5 consecutive cards like 2,3,4,5,6 or 10,j,q,k,a

source("straight")

#high card
source("highcard")

cards  # <--remove to test, the matrix should now have 0s for the cards corresponding to your hand as well as the flop,turn, and river
print("the matrix should now have 0s for the cards corresponding to your hand as well as the flop,turn, and river, 7 total 0s")