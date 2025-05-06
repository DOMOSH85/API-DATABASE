# import requests
import mysql.connector

# url = requests.get("https://api.github.com/users/rafaelalmeidac")

# posts  requests.post("https://api.github.com/users/rafaelalmeidac")

conn = mysql.connector.connect(
    host="localhost",
    user="root",  
    password="OGOLLADANTINA1@",
    database="clinic")



#  Create a cursor object to execute SQL queries
cursor = conn.cursor()

# Insert statement
# cursor.execute("INSERT INTO products (product_id, product_name) VALUES (%s, %s)", (5, 'Iphone'))
# conn.commit()  # Commit the transaction to save changes


cursor.execute("SELECT * FROM appointments,doctors,patients")




rows = cursor.fetchall()

for row in rows:
    print(row)

# Close the cursor and connection
cursor.close()
conn.close()