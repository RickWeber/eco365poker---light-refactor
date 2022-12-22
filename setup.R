# Functions to take input
user_input <- function(prompt) {
  if (interactive()) {
    return(readline(prompt))
  } else {
    cat(prompt)
    return(readLines("stdin",n=1))
  }
}

continue_prompt <- function(prompt = "Are you ready to continue?"){
  x <- ""
  while(!(tolower(x) %in% c("yes", "y"))){
    x <-user_input(prompt) 
    if (!(x %in% c("yes", "y"))) {
      print("Please enter a valid response.")
    }
  }
  x
}

# Function to set up game:
make_deck <- function(){
  cards <- matrix(2:14, nrow = 13, ncol = 4)               #creating a matrix with 52 values, the column(4) are suits, the rows(13) are card values
  colnames(cards) <- c("♥hearts♥", "♠spades♠", "♦diamonds♦", "♣clubs♣")
  rownames(cards) <- c(2:10, "jack", "queen", "king", "aces")
  cards
}

deal_cards <- function(deck = make_deck(), n = 2, hand = list()){
  available_cards <- (1:length(deck))[deck > 0] # don't draw used cards
  drawn_cards <- sample(available_cards, n)
  out_hand <- list()
  for(i in 1:n){
    card <- drawn_cards[i]
    suit <- ifelse(card <= 13, "♥hearts♥",
                  ifelse(card <= 26, "♠spades♠",
                        ifelse(card <= 39, "♣clubs♣", "♦diamonds♦")))
    face <- deck[card]
    out_hand[[i]] <- c(suit, face)
  }
  hand <- append(hand, out_hand)
  for(card in drawn_cards){
    deck[card] <- 0 # "remove" drawn card from deck
  }
  list(deck = deck, hand = hand) # pass back an updated deck and hand
  # Note: this function can also be used for communal cards
}
# Turn over communal cards
communal_card_reveal <- function(round = "flop", communal_cards = c()){
  continue_prompt(paste0("Are you ready for the ", round, "?"))
  deal <- deal_cards(cards, ifelse(round == "flop", 3, 1), communal_cards)
  cards <<- deal$deck # <<- lets us reach into outer scope to update our deck
  communal_cards <- deal$hand
  print("Here are the communal cards so far:")
  display_hand(communal_cards)
  source("checkfold.R")
  deal
}


display_hand <- function(hand){
  #print("Your hand is:")
  for(card in hand){
    message("---->", card[2], " of ", card[1], "<----")
  }
}