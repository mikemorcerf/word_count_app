# README

This is a projected created using Ruby on Rails version 6.0.2.1 and React.
The idea behind this project was to generate data in an interval of time, store this data in the database, and then create a view that uses React to display the data collected in the database in a graph and in a table.
This project simulates a system that retrieves from a datasource (e.g. Twitter) the number of times a word is posted for every minute.

The data was generated using the function ApplicationController.generate_data, which generates 5 random values from 1 to 100 and assign them to the words "houseflip", "home", "house", "building", and "realstate" every minute.
The function runs for 100 minutes, and generates 500 entries in the database upon completion.

Then the data collected is displayed on the pages/graph.html.erb view using react components.
The pie chart is imported from 'react-google-charts', and the table is imported from 'react-data-table-component'.