# Load required packages
library(e1071)   # for naiveBayes
library(caTools) # for sample.split
library(gmodels) # for CrossTable

# Use built-in iris dataset
iris <- datasets::iris

# Set seed for reproducibility
set.seed(100)

# Split data (species column is "Species" with capital S)
split <- sample.split(iris$Species, SplitRatio = 0.7)

# Create train and test subsets
iris_train <- subset(iris, split == TRUE)
iris_test <- subset(iris, split == FALSE)

# Extract features and labels for train and test
iris_train_features <- iris_train[, 1:4]
iris_train_labels <- iris_train$Species

iris_test_features <- iris_test[, 1:4]
iris_test_labels <- iris_test$Species

# Train Naive Bayes classifier
classifier_cl <- naiveBayes(iris_train_features, iris_train_labels)

# Print model summary
print(classifier_cl)

# Predict on test set
iris_test_pred <- predict(classifier_cl, iris_test_features)

# Print predictions
print(iris_test_pred)

# Confusion matrix analysis
CrossTable(iris_test_labels, iris_test_pred, prop.chisq = FALSE)
