# Exploring Flight Data for Predictive Analysis

In this blog post, we delve deep into an extensive exploratory data analysis (EDA) of a vast dataset containing comprehensive flight information. With 3 million rows and 32 columns, this dataset provides a wealth of insights into various aspects of flight operations, including departure/arrival times, delays, cancellations, and more. The report for this project is [here](/pages/FlightsDelaysandCancellation/Machine_Learning_EDA_Presentation.pdf), and just follow the link for the [EDA](/pages/FlightsDelaysandCancellation/1-%20EDA.ipynb) code, the baseline model right over [here](/pages/FlightsDelaysandCancellation/2-%20Model.ipynb).

## Introduction

Understanding and analyzing flight data is crucial for stakeholders in the aviation industry to optimize operational efficiency, improve safety standards, and enhance passenger experience. Through meticulous exploratory analysis, we aim to uncover valuable insights that can inform predictive modeling and decision-making processes.

## Data Overview

### Features Overview

The dataset encompasses a wide array of features, offering a comprehensive view of flight operations. Some of the key features include:

- Flight date
- Airline information (e.g., carrier code, DOT ID)
- Origin and destination airport details
- Scheduled and actual departure/arrival times
- Delay breakdown (e.g., carrier delay, weather delay)
- Flight cancellation and diversion indicators

### Data Shape

- **Rows:** 3,000,000
- **Columns:** 32

## Exploratory Analysis

### Feature Statistics

We conducted an in-depth statistical analysis on various features to uncover trends and patterns within the data. Some of the key insights include:

- Distribution of departure and arrival delays
- Analysis of delay factors (e.g., carrier, weather) and their impact on flight operations
- Examination of cancellation reasons and their frequency

### Cancellation Analysis

Understanding the factors contributing to flight cancellations is paramount for airlines and airport authorities. Our analysis includes:

- Total number of flight cancellations
- Distribution of cancellations across different airlines and airports
- Seasonal variations in cancellation rates

## Preprocessing Techniques

Before proceeding with predictive modeling, it's essential to preprocess the data to ensure its suitability for analysis. We propose several preprocessing techniques, including:

- One-hot encoding of categorical features such as origin city, destination city, and airline code
- Discretization of delay features to create classes for better prediction accuracy
- Normalization of distance feature to bring all features to a similar scale
- Creation of new features, such as categorizing scheduled arrival times into morning, afternoon, and night categories

## Features and Outputs Selection

Careful selection of features is crucial for developing accurate predictive models. We have chosen the following features for our analysis:

- One-hot encoded airline code, origin, and destination
- Distance between origin and destination airports
- Scheduled arrival time categories
- Output variable: Arrival delay categorized into classes (Early, Very Good, Bad, Cancelled)

## Baseline Model

To establish a baseline for predictive modeling, we implemented a Support Vector Classifier (SVC) using the one-vs-rest (ovr) approach. The model achieved the following performance metrics on the macro approach:

- F1-score: 0.32
- Recall-score: 0.33
- Accuracy-score: 0.96
- Precision-score: 0.32

## Conclusion

Our extensive exploratory analysis of flight data provides valuable insights into the operational dynamics of airline services. By leveraging these insights and employing advanced predictive modeling techniques, airlines and airport authorities can optimize flight operations, enhance passenger satisfaction, and mitigate disruptions, ultimately leading to a safer and more efficient aviation ecosystem.
