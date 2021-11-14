from types import resolve_bases
from typing import Optional

from fastapi import FastAPI
from pydantic import BaseModel

app = FastAPI()

recommended_majors = ["CS", "SE", "ACCT"]
recommended_classes = ["CS 2336", "CS 1337", "CS 4301"]


# Base model schema for the graduate info
# which will be provided in the request body of the POST request
# with the "/graduate/" path
class graduate_info(BaseModel):
    industry: str
    role: str
    courses: str

# GET request to return the recommended majors fo the user
@app.get("/majors/")
def return_major():
    return recommended_majors

# GET request to return the recommended classes for the user
@app.get("/classes/")
def return_classes():
    return recommended_classes

# POST request to 
# {
#     industry:""
#     role:""
#     courses:[]
# }
@app.post("/graduate/")
def student_info(info: graduate_info):
    return info