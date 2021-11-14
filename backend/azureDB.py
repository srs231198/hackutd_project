import psycopg2

# Update connection string information
host = "freshoff.postgres.database.azure.com"
dbname = "postgres"
user = "freshoff@freshoff"
password = "GK!RUm2Wt-"
sslmode = "disable"

# Drop previous table of same name if one exists
# cursor.execute("DROP TABLE IF EXISTS inventory;")
# print("Finished dropping table (if existed)")

# Create a table
# cursor.execute("CREATE TABLE inventory (id serial PRIMARY KEY, name VARCHAR(50), quantity INTEGER);")
# print("Finished creating table")

# Insert some data into the table
# cursor.execute("INSERT INTO inventory (name, quantity) VALUES (%s, %s);", ("banana", 150))
# cursor.execute("INSERT INTO inventory (name, quantity) VALUES (%s, %s);", ("orange", 154))
# cursor.execute("INSERT INTO inventory (name, quantity) VALUES (%s, %s);", ("apple", 100))
# print("Inserted 3 rows of data")

# Clean up
conn_string = "host={0} user={1} dbname={2} password={3} sslmode={4}".format(host, user, dbname, password, sslmode)

def upload_graduates(industry, major, position, courses):
    conn = psycopg2.connect(conn_string)
    cursor = conn.cursor()
    for course in courses:
        cursor.execute("INSERT INTO graduates (industry, major, role, course) VALUES (%s, %s, %s, %s);", (industry, major, position, course))
    conn.commit()
    conn.close()
    cursor.close()
    return


def get_courses(industry, major, position):
    conn = psycopg2.connect(conn_string)
    cursor = conn.cursor()
    
    cursor.execute("SELECT course FROM graduates WHERE major = %s AND role = %s AND industry = %s;", (major, position, industry))
    
    val = cursor.fetchall()
    conn.close()
    cursor.close()
    
    return val


def get_majors(industry):
    conn = psycopg2.connect(conn_string)
    cursor = conn.cursor()
    cursor.execute("SELECT major FROM graduates WHERE industry = '{0}';".format(industry))
    val = cursor.fetchall()
    conn.close()
    cursor.close()
    
    return val

if __name__ == "__main__":

    ECS_majors = ["CS", "SE", "ME", "EE", "DS", "ITS"]
    roles = ["IC", "Supervisor", "Manager", "Executive"]
    industries = ["Construction", "Technology", "Space", "Information Technology", "Robotics"]

    print(get_courses("Technology", "SE", "IC"))
    print("%%%%%%%%%%%%%%%%%%%%%")
    print(get_majors("Robotics"))
    