#test for straight #########################################################################################################################
############################################################################################################################################

teststraightA <- c(handdisplay, flopdisplay, turndisplay, riverdisplay)
#teststraightA <- c("aces", 2,3,4,5,6,7)        # remove # and type in your own 7 card combo to test for a straight

teststraightB <- c(teststraightA[!teststraightA %in% "♥hearts♥"] )       #removing the suits 
teststraightC <- c(teststraightB[!teststraightB %in% "♠spades♠"] )
teststraightD <- c(teststraightC[!teststraightC %in% "♦diamonds♦"] )
teststraight <- c(teststraightD[!teststraightD %in% "♣clubs♣"] )

#changing the j,q,k,a into values, 11,12,13,14
t<-grepl("jack", teststraight)   #checks each hand to see if its a jack, if it is a jack then its TRUE         
l<-length(t[t== TRUE])            
if (l>0) {
  teststraight = c(teststraight[!teststraight %in% "jack"],11)  #ifthere is 1 or more jack then 11 takes the place
}

t<-grepl("queen", teststraight)
l<-length(t[t== TRUE])
if (l>0) {
  teststraight = c(teststraight[!teststraight %in% "queen"],12)
}

t<-grepl("king", teststraight)
l<-length(t[t== TRUE])
if (l>0) {
  teststraight = c(teststraight[!teststraight %in% "king"],13)
}

t<-grepl("aces", teststraight)
l<-length(t[t== TRUE])
if (l>0) {
  teststraight = c(teststraight[!teststraight %in% "aces"],14,1)
}

min <- min(as.numeric(teststraight))
max <- max(as.numeric(teststraight))

seqqq<-seq(min,max,1)   #arranging numbers in order from min to max, example: if the hand is 2,3,4,5,6,7 and a 10, this will create numbers all the way from 2 to 10, including 8,9 which was not in the original hand, we need to get rid of the extra cards later on

sss<-as.numeric(teststraight) #gave problems if i dont use asnumeric

fff<-seqqq[!seqqq %in% sss]  #selecting the extra cards mentioned earlier

final<-seqqq[!seqqq %in% fff] #getting rid of the extra cards

#diff(diff(final)) #this should have 0 or more 0s if there is a straight

if (length(which(diff(diff(final))==0)) >= 3 & length(which(diff(final)==1)) >3) {    #getting the diff of diff(final) to see if there are three or more 0s is a better way to test straight, ran into situations where there was actually no straight, but still produce three 0s so it was giving me false straights, so i added another conditions of two or more 1s to make it more strict
  checkhigh<- 99
  message("congrats! you got a straight! ")
}