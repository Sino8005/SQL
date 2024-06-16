import mysql.connector
import pandas as pd

# Connect to the MySQL database
connection = mysql.connector.connect(
    host='localhost',
    user='root',
    password='iezsw8qj',
    database='sakila'
)

# SQL command to retrieve data
query = 'SELECT * FROM actor LIMIT 10;'

# Use pandas to execute the query and fetch the results into a DataFrame
df = pd.read_sql_query(query, connection)

# Display the DataFrame
print(df)

# Close the connection
connection.close()
