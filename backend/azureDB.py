import psycopg2
from decouple import config

# Update connection string information
host = "freshoff.postgres.database.azure.com"
dbname = "postgres"
user = "freshoff@freshoff"
password = ""
sslmode = "disable"


# Config string
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
    
    cursor.execute("SELECT course, COUNT(*) FROM graduates WHERE major = %s AND role = %s AND industry = %s group by course order by 2 DESC limit 10;", (major, position, industry))
    
    val = cursor.fetchall()
    conn.close()
    cursor.close()
    
    return val


def get_majors(industry):
    conn = psycopg2.connect(conn_string)
    cursor = conn.cursor()
    cursor.execute("SELECT major, COUNT(*) FROM graduates WHERE industry = '{0}' group by major order by 2 DESC limit 3;".format(industry))
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
    