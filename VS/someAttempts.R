#install.packages("plotly")
library(plotly)

###############
#             #
# Exercise 1  #
#             #
###############

plot_ly(x = iris[, 1])
#type = "histogram" is the argument to be included to specify the chart type

###############
#             #
# Exercise 2  #
#             #
###############

#nbinsx is the argument to specify number of bins. 

plot_ly(x = iris[, 1], type = "histogram", nbinsx = 20)

###############
#             #
# Exercise 3  #
#             #
###############

plot_ly(x = iris[, 1], y = iris[, 2], type = "scatter", mode = "markers")
plot_ly(x = iris[, 1], y = iris[, 2], type = "scatter", mode = "markers", color = iris[, "Species"])

###############
#             #
# Exercise 4  #
#             #
###############

plot_ly(x = iris[, 1], y = iris[, 2], type = "scatter", mode = "markers", color = iris[, "Species"], size = iris[, 3])

###############
#             #
# Exercise 5  #
#             #
###############

plot_ly(x = 1:100, y = rnorm(100), type = "scatter", mode = "lines")

###############
#             #
# Exercise 6  #
#             #
###############

p <- plot_ly(x = 1:100, y = rnorm(100), type = "scatter", mode = "lines")
layout(p, title = "Line plot")

###############
#             #
# Exercise 7  #
#             #
###############
cat <- c(rep("A", 2), rep("B", 4), rep("C", 8))
df <- as.data.frame(table(cat))

plot_ly(x = df[, 1], y = df[, 2], type = "bar")
plot_ly(x = df[, 1], y = df[, 2], type = "bar", color = df[, 1])

###############
#             #
# Exercise 8  #
#             #
###############

plot_ly(labels = df[, 1], values = df[, 2], type = "pie")

###############
#             #
# Exercise 9  #
#             #
###############

plot_ly(y = iris[, 1], type = "box")

###############
#             #
# Exercise 10  #
#             #
###############

plot_ly(y = iris[, 1], type = "box", color = iris[, "Species"])