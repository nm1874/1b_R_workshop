# 1. 
v1 <- c(0,1,0,0,0,0); v2 <- c(0,0,1,0,1,0); v3 <- c(0,0,0,1,0,0); 
v4 <- c(1,0,0,0,0,1); v5 <- c(1,0,0,0,0,0); v6 <- c(0,0,1,0,0,0);
M <-cbind(v1,v2,v3,v4,v5,v6); M

M2 <- M%*%M
M2

M4 <- M2%*%M2
M4

M8 <-M4%*%M4
M8

M9 <- M8%*%M
M9


#2. 

a0 <- c(1,0,0,0); a1 <- c(10/19,0,9/19,0); a2 <- c(0,10/19,9/19,0); a3 <- c(0,0,0,1)
A <-cbind(a0,a1,a2,a3)
A

A2 <- A%*%A
A4 <- A2%*%A2
A8 <- A4%*%A4
A16 <- A8%*%A8
A32 <- A16%*%A16
round(A32%*%A32%*%A32, digit=6)

#3. 
pars<-par(mar=c(1,1,1,1)+0.1, pch=20)  #set up narrow margins
plot(NULL, xlim = c(0,5), ylim = c(-1,5), xlab = "", ylab= "", axes = FALSE)
axis(1,pos = 0); axis(2,pos = 0) #set up axes at left and bottom

#Topic 1 - addition of vectors in R^2
#An element of R^2 is just a list of two numbers.
X <- c(1,2)     #c() means "concatenate"

#We can think of this element of R^2 as a point and plot it.
points(X[1], X[2])  
Y <- c(3,5)  #another point
points(Y[1], Y[2])     #add it to the plot
Z <- c(4, 2)
points(Z[1], Z[2])

#The difference of two points is a vector.
v_1 <- B - A; v_1  #difference of two points is a vector
points(c(X[1],Y[1]), c(X[2],Y[2]), type = "l") #this function takes pairs of coordinates
points(c(Y[1],Z[1]), c(Y[2],Z[2]), type = "l")
points(c(Z[1],X[1]), c(Z[2],X[2]), type = "l")

points(c((X[1]+Y[1])/2, Z[1]), c((X[2]+Y[2])/2, Z[2]), type="l")
points(c((Y[1]+Z[1])/2, X[1]), c((Y[2]+Z[2])/2, X[2]), type="l")
points(c((Z[1]+X[1])/2, Y[1]), c((Z[2]+X[2])/2, Y[2]), type="l")
