check_fold_prompt <- function(prompt = "Do you want to check, fold, or raise?"){
  x <- ""
  valid_options <- c(
    "check", "c",
    "fold", "f", "quit", "q",
    "raise", "r", "bet", "b"
  )
  while(!(tolower(x) %in% valid_options)){
    x <- user_input(prompt)
    if(!(x %in% valid_options)){
      print("Please enter a valid response.")
    }
  }
  if(x %in% valid_options[3:6]){
    print("Better luck next time! Don't forget to stop at the gift shop on your way out")
    quit()
  }
  print("Good luck!") 
  # TODO: add betting functionality
}
check_fold_prompt()