# ANOVA Heartbeat Analysis in R

An in-depth statistical study to determine significant differences in heartbeat rates across treatment groups. This project uses **ANOVA (Analysis of Variance)** to evaluate whether differences in heartbeat rates are statistically significant, factoring in age, gender, and smoking status as potential confounders.

## Table of Contents
1. [Project Description](#project-description)
2. [Features](#features)
3. [Installation](#installation)
4. [Usage](#usage)

## Project Description
The objective of this project is to determine if there are significant differences in heartbeat rates across different treatment groups. Using **ANOVA** for robust statistical evaluation, we assess if observed differences are meaningful or due to random variation. Confounders such as age, gender, and smoking status are accounted for to isolate the treatment effect.

## Features
- **Multi-group Comparison**: Uses ANOVA to compare multiple treatment groups.
- **Confounder Adjustment**: Controls for age, gender, and smoking status.
- **Data Visualization**: Generates visualizations of heartbeat distributions across groups.
- **Statistical Significance Testing**: Provides detailed output on ANOVA results.

## Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/ANOVA-Heartbeat-Analysis.git
2.Navigate to the project directory and ensure you have the required R packages::
   ```r
      install.packages(c("car", "ggplot2", "ggpubr"))
   ```
## Usage
1.Load the dataset and run data preprocessing.

2.Use Levene's Test for homogeneity of variance, Variance Inflation Factors to check multicollinearity, and frequency tables for sample size distribution.

3.Run ANOVA to analyze the impact of independent variables on heartbeat rate.

##Sample Code:
To perform the analysis, load the necessary R libraries and run:
   ```r
      source("main.R")
   ```

    
