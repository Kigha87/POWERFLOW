# POWERFLOW (preparing data for ROI analysis dashboard)

TABLE OF CONTENT
1- [Overview](#overview).
2- [Objective](#objective).
3- [Sources](#sources)
4- [Project Steps](#project_steps)
5- [Loading Data To Snowflake](#loading_data_to_snowflake)
6- [Link To Dbt Docs](#link_to_dbt_docs)


# OVERVIEW

 This project models data fom the data source into a set of cleaned and transformed tables for analysis.

# OBJECTIVE

  Determine which marketing channel and/or campaign ID demonstrates the highest ROI at specific days throughout a user's lifetime.

# SOURCES

```YAML
sources:
   - name: POWERFLOW
     database: POWERFLOW
     schema: public
     tables:
        - name: registrations
        - name: Appsflyer
        - name: google_ads
        - name: transactions
```

# PROJECT STEPS

To prepare the data for marketing dashboard with ROI calculation:

1. Ensure clean user data, has no missing informations or fake installs and separate genral organic installs from those acquired through campaigns.
2. Standardize marketing data, by unifying data from sources like Appsflyer and Google Ads into a single format to make it easier to join with user LTV information.
3. Create a daily LTV table, by building a separate table that calculates each user's LTV for every day of their lifetime.
4. Building the ROI table, helps to combine all the data into a ROI table that includes information on users channel, campaigns, costs, LTV, and ROI for specific lifetime days.


# LOADING DATA TO SNOWFLAKE

This process is divided into 2 groups and the different files are loaded manually

1. Information registered by the app based on user actions
     - Registrations table (registrations.csv)
     - Transactions table (transactions.csv)

2. Marketing data
    - Appsflyer table (Appsflyer.csv)
    - Google Ads table (google_ads.csv)
    - campaign costs (campaign_costs.csv)


# LINK TO DBT DOCS

Link:
https://sz175.us1.dbt.com/accounts/70471823466784/develop/70471823868403/docs/index.html#!/overview/my_new_project
