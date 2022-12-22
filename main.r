source('setup.R')
# Start game
continue_prompt()
# get a deck of cards
cards <- make_deck()
# Not sure what this variable is supposed to do
checkhigh<- 0
# 
initial_deal <- deal_cards(cards, 2, c())
cards <- initial_deal$deck
hand <- initial_deal$hand
display_hand(hand)

source("checkfold.R")

# Turn over communal cards
communal_card_reveal <- function(round = "flop", communal_cards = c()){
  continue_prompt(paste0("Are you ready for the ", round, "?"))
  deal <- deal_cards(cards, ifelse(round == "flop", 3, 1), communal_cards)
  cards <- deal$deck
  communal_cards <- deal$hand
  print("Here are the communal cards so far:")
  display_hand(communal_cards)
  source("checkfold.R")
  deal
}

communal_cards <- c()
flop <- communal_card_reveal("flop", communal_cards, communal_cards)
cards <- flop$deck
turn <- communal_card_reveal("turn", communal_cards, flop$hand)
cards <- turn$deck
river <- communal_card_reveal("river", communal_cards, turn$hand)
cards <- river$deck

# check for hand values:
# consider possible hands (i.e. combinations of private and communal cards to make a hand of 5 cards).
combinations <- function(size, choose) {
  # from: https://stackoverflow.com/a/38485445
  d <- do.call("expand.grid", rep(list(0:1), size))
  d[rowSums(d) == choose,]
}
available_cards <- c(hand, communal_cards)
possible_card_selections <- combinations(7,5)
possible_hands <- lapply(1:nrow(possible_card_selections),
                        function(row){ available_cards[as.logical(possible_card_selections[row, ])]
                        })

# check each hand
# create a function to compare two hands
better_hand <- function(hand1, hand2){
  hand1 # return hand1 by default
}

best_hand <- possible_hands[1]
for (p in possible_hands){
  best_hand <- better_hand(best_hand, p)
}

# royal flush
royal_flush <- function(hand){
  high_card(hand) == 14 &&
  flush(hand) &&
  straight(hand)
}
# straight flush
straight_flush <- function(hand){
  high_card(hand) < 14 &&
  flush(hand) &&
  straight(hand)
}
# 4 of a kind
four_of_kind <- function(hand){
  
}
# full house
flush <- function(hand){
  
}
# flush
# straight
# 3 of a kind
# two pair
# pair
# high card

source("matches_in_flop.R")

#test for matches in total cards revealed###########################################################################################################
##########################################################################################################################

source("matchesTOTAL.R")

#test for flush in all cards revealed################## flush is 5 of the same suit

source("flush.R")

#test for straight #########################################################################################################################
############################################################################################################################################
#straight is 5 consecutive cards like 2,3,4,5,6 or 10,j,q,k,a

source("straight.R")

#high card
source("highcard.R")

cards  # <--remove to test, the matrix should now have 0s for the cards corresponding to your hand as well as the flop,turn, and river
print("the matrix should now have 0s for the cards corresponding to your hand as well as the flop,turn, and river, 7 total 0s")