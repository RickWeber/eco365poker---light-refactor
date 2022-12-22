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

deal_cards <- function(deck = make_deck(), n = 2, hand = c()){
  available_cards <- (1:length(deck))[deck > 0] # don't draw 
  drawn_cards <- sample(available_cards, n)
  for(card in drawn_cards){
    suit <- ifelse(card <= 13, "♥hearts♥",
                  ifelse(card <= 26, "♠spades♠",
                        ifelse(card <= 39, "♣clubs♣", "♦diamonds♦")))
    face <- deck[card]
    hand <- c(hand, c(suit, face))
    deck[card] <- 0 # "remove" drawn card from deck
  }
  list(deck = deck, hand = hand) # pass back an updated deck
}

display_hand <- function(hand){
  print("Your hand is:")
  for(card in hand){
    message("---->", card[2], " of ", card[1], "<----")
  }
}