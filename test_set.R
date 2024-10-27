# Load required libraries
library(car)  # For Levene's test and variance inflation factors
library(ggplot2)  # For visualization

# Read the dataset from the CSV file
data <- read.csv("C:\\Users\\tauky\\OneDrive\\Documents\\TP_R_Simulation\\dataset_final.csv")
head(data)
# Assuming 'data' is your dataframe, 'heart_rate' is your dependent variable,
# 'sex', 'current_smoker', and 'age_category' are your independent variables,
# and 'model' is your regression model

# 1. Homogeneity of Variances (Levene's Test)
levene_sex <- leveneTest(heart_rate ~ sex, data=data)
print(levene_sex)

levene_smoker <- leveneTest(heart_rate ~ current_smoker, data=data)
print(levene_smoker)

levene_age <- leveneTest(heart_rate ~ age_category, data=data)
print(levene_age)

# 2. Normality of Residuals (Visual Inspection)
model <- lm(heart_rate ~ sex + current_smoker + age_category, data=data)
plot(model, which=2)  # Plotting residuals

# 3. Sample Size (Frequency Table)
table(data$sex)  # Display frequency table of 'sex'
table(data$current_smoker)  # Display frequency table of 'current_smoker'
table(data$age_category)  # Display frequency table of 'age_category'

# 4. Balanced Design (Frequency Table for Two-Way ANOVA)
table(data$sex, data$current_smoker)  # Display frequency table for 'sex' and 'current_smoker'
table(data$sex, data$age_category)  # Display frequency table for 'sex' and 'age_category'
table(data$current_smoker, data$age_category)  # Display frequency table for 'current_smoker' and 'age_category'

# 5. No Multicollinearity (Variance Inflation Factors)
# Assuming 'model' is your regression model
vif(model)


# Fit ANOVA model using aov()
model_anova <- aov(heart_rate ~ sex * current_smoker * age_category, data=data)

# Summarize ANOVA results
summary(model_anova)

