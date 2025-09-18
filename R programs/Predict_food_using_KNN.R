# Load data
food = read.csv("C:/Users/Admin/Desktop/sooraj(data science)/food.csv")

# Create new data frame for tomato
tomato = data.frame(ingredient = "tomato", Sweetness = 6, Crunchiness = 4)

# Select features
food1 = food[, 2:3]
tomato1 = tomato[, 2:3]

# Get k from user (interactive)
k <- as.numeric(readline(prompt = "Enter the value of k:"))

# Load required package
library(class)

# Run KNN
pred = knn(train = food1, test = tomato1, cl = food$FoodType, k = k)

# Output prediction
cat("Predicted Food Type of Tomato:\n")
print(pred)

