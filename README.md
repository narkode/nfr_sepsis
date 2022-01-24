# Norepinephrine-to-fluid ratio (NFR) in septic patients

## Overview

This repository contains an Jupyter Notebook and SQL-code to run a query against the AmsterdamUMCdb to calculate the cumulative dose of norepinephrine, crystalloids, colloids and bloodproducts in septic patients. 

## Usage

### Connection settings
Put the 'config.ini' file with the connection settings into the root directory. Alternatively, change the path in the 'Connection' section.

### Extract septic patients
The file 'sepsis.csv' has to be created by the reason_for_admission.ipynb notebook in the concepts folder of the AmsterdamUMCdb repository. To create the file, run

    sepsis.to_csv('sepsis.csv')

after the 'sepsis' DataFrame has been created. Copy the file 'sepsis.csv' into the 'data' folder.


