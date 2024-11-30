[estimations_5_traits] 

Folder Description

This folder contains the essential codes and data for a Master's thesis project in Business Sciences with a Specialization in Entrepreneurship at Universidad Católica del Norte. The project focuses on estimating five personality traits based on Goldberg's Big Five theory (1992), utilizing advanced Natural Language Processing techniques.

Contents:

1. `data` subfolder:
   This subfolder includes the PSM datasets for the first and second quasi-experiments (described in greater detail in the manuscript). Additionally, it contains the 2023 Forbes World Billionaires List and the list of tweets from entrepreneurs identified as Schumpeterian and Non-Schumpeterian. Finally, it stores the estimates produced by the trained model (RoBERTa Fine-Tuned with Pennebaker and King Essays, 1999).  
   Note: Files ending in "_1" or "_2" correspond to the first or second quasi-experiment, respectively.

2. `python` subfolder:  
   This subfolder contains the datasets used to train the model, saved as `final_model.pt`. It also includes the final output of the model (estimates) and the Python scripts required to train the neural network model and to use the trained model for predicting personality traits from social media text.

3. `R` subfolder:  
   Contains R scripts to estimate the matching process for the first and second quasi-experiments, the sample obtained to select the treatment group for the second quasi-experiment, and the T-tests and Mann-Whitney U tests for both quasi-experiments.

4. `stata` subfolder:
   Includes Stata scripts used to estimate stochastic dominance within the thesis framework. These scripts analyze and compare personality trait distributions across different groups (Schumpeterian and Non-Schumpeterian), providing detailed insights into the differences in personality characteristics.