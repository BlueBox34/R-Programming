a <- sample(1:6, size = 2000, replace = TRUE)
b <- sample(1:6, size = 2000, replace = TRUE)
sum <- a+b
sum
hist(sum,xlab="Values of Two face",ylab = "Round" ,main = " Two face values")
boxplot(sum, main = "values Of Two Face But Boxplot", ylab = "Values")
M<- 'Mean '
Me<-'median'
Mo<-'mode: '
cat("Mean:",mean(sum)," ")
cat("Median:", median(sum)," ")

Modes <- function(sum) {
  sumx <- unique(sum)
  tab <- tabulate(match(sum, sumx))
  sumx[tab == max(tab)]
}
cat("Mode:",Modes(sum) ," ")
count<-0
for(i in 1:2000){
    if(sum[i]==7){
        count<-count+1
    }
}
cat("Probability of getting a sum of 7 of those 2,000 rolls is",count/2000)

    
