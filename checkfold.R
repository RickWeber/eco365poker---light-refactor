
x <- ""
while(!(x %in% c("fold", "check"))) {
 
  x <-user.input("your move: 'fold' or 'check': ") 
   print(x)
  if (!(x %in% c("fold", "check"))) {
   print("thats not valid")
   }
 if (x == "fold") {
   print("better luck next time")
   quit()
   }
  if (x == "check") {
   print("good luck")
   }
}