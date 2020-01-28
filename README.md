# README

This is a projected created using Ruby on Rails version 6.0.2.1 and React.
The idea behind this project was to generate data in an interval of time, store this data in the database, and then create a view that uses React to display the data collected in the database in a graph and in a table.
This project simulates a system that retrieves from a datasource (e.g. Twitter) the number of times a word is posted for every minute.

The data was generated using the function ApplicationController.generate_data, which generates 5 random values from 1 to 100 and assign them to the words "houseflip", "home", "house", "building", and "realstate" every minute.
The function runs for 1,500 minutes (25 hours), and generates 7,500 entries in the database upon completion.

Then the data collected is displayed on the pages/graph.html.erb view using react components.
The pie chart is imported from 'react-google-charts', and the table is imported from 'react-data-table-component'.

INSTRUCTIONS OF HOW TO RUN IT LOCALLY:
1. Once you have downloaded the app you must set up a local PostgreSQL server for the app to use
2. After setting up a PostgreSQL server for the app, you must access the file config/database.yml and change the following lines of code:

development:
  <<: *default
  database: "word_count_app_development"
  username: <%= ENV['POSTGRESQL_DATABASE_WORD_COUNT_APP_USERNAME'] %>
  password: <%= ENV['POSTGRESQL_DATABASE_WORD_COUNT_APP_PASSWORD'] %>

to your database configuration information, like on the example below:

development:
  <<: *default
  database: "the_name_of_my_PostgreSQL_database"
  username: "username_for_my_PostgreSQL_database"
  password: "password_for_my_PostgreSQL_database"

3. Initialize the server
4. Now you must visit the word_count_app home page in order to generate data
5. If you have less than 7,500 entries in the database, the app will start generating data automatically until it has 7,500 entries in the database.
The app generates 5 random values from 1 to 100 and assign them to the words "houseflip", "home", "house", "building", and "realstate" every minute.
The function runs for 1,500 minutes (25 hours), and generates 7,500 entries in the database upon completion.
6. Once there are data available in the database, visit the graph page to visualize it