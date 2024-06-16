import mysql.connector

# Connect to the MySQL database
connection = mysql.connector.connect(
    host='localhost',
    user='root',
    password='iezsw8qj',
    database='sakila'
)

# Create a cursor object
cursor = connection.cursor()

# SQL command to retrieve data
query = 'SELECT * FROM actor LIMIT 10;'

# Execute the SQL command
cursor.execute(query)

# Fetch all results
results = cursor.fetchall()

# Print the results
for row in results:
    print(row)

# Close the cursor and connection
cursor.close()
connection.close()
