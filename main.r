# setup function
source('setup.R')
# hand evaluation functions
source("flush.R")
# Start game
continue_prompt()
# get a deck of cards
cards <- make_deck()
# deal cards
initial_deal <- deal_cards(cards, 2, c())
cards <- initial_deal$deck
hand <- initial_deal$hand
display_hand(hand)

source("checkfold.R")

communal_cards <- c()
flop <- communal_card_reveal("flop", communal_cards)
turn <- communal_card_reveal("turn", flop$hand)
river <- communal_card_reveal("river", turn$hand)
communal_cards <- river$hand

# check for hand values:
# consider possible hands (i.e. combinations of private and communal cards to make a hand of 5 cards).
combinations <- function(size, choose) {
  # from: https://stackoverflow.com/a/38485445
  d <- do.call("expand.grid", rep(list(0:1), size))
  d[rowSums(d) == choose,]
}

available_cards <- append(hand, communal_cards)
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
  faces <- sapply(hand, function(c) c[2])
  max(table(faces) == 4)
}
# full house
# flush
flush <- function(hand){
  suit <- hand[[1]][1]
  suits <- sapply(hand, function(c) c[1])
  all(suits == suit)
}
#check_for_flush(hand)
# straight
# 3 of a kind
three_of_kind <- function(hand){
  faces <- sapply(hand, function(c) c[2])
  max(table(faces) == 3)
}
# two pair
# pair
two_of_kind <- function(hand){
  faces <- sapply(hand, function(c) c[2])
  max(table(faces) == 2)
}
# high card

source("matches_in_flop.R")

#test for matches in total cards revealed###########################################################################################################
##########################################################################################################################

source("matchesTOTAL.R")

#test for flush in all cards revealed################## flush is 5 of the same suit


#test for straight #########################################################################################################################
############################################################################################################################################
#straight is 5 consecutive cards like 2,3,4,5,6 or 10,j,q,k,a

source("straight.R")

#high card
source("highcard.R")

cards  # <--remove to test, the matrix should now have 0s for the cards corresponding to your hand as well as the flop,turn, and river
print("the matrix should now have 0s for the cards corresponding to your hand as well as the flop,turn, and river, 7 total 0s")