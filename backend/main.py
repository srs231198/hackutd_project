from types import resolve_bases
from typing import Optional
import json
from Nebula import test
from azureDB import get_majors, get_courses

import uvicorn

from fastapi import FastAPI
from pydantic import BaseModel

app = FastAPI()
obj = test()

# ["CS", "SE", "ACCT"]
# ["CS 2336", "CS 1337", "CS 4301"]

ECS_majors = ["CS", "SE", "ME", "EE", "DS", "ITS"]
roles = ["IC", "Supervisor", "Manager", "Executive"]
industries = ["Construction", "Technology", "Space", "Information Technology", "Robotics"]

recommended_majors = []
recommended_courses = []

# Base model schema for the graduate info
# which will be provided in the request body of the POST request
# with the "/graduate/" path
class graduate_info(BaseModel):
    industry: str
    major: str
    role: str
    courses: str

# GET request to return the recommended majors fo the user
@app.get("/majors/")
def return_major():

    # return recommended_majors

    return obj.rec_m

# GET request to return the recommended classes for the user
@app.get("/classes/")
def return_classes():

    # recommended_classes = obj.courses
    # return recommended_classes

    return obj.rec_c

# POST request to 
# {
#     industry:""
#     role:""
#     courses:[]
# }

@app.post("/graduate/")
def student_info(info: graduate_info):

    recommended_majors = get_majors(info.industry)
    obj.rec_m = recommended_majors
    recommended_courses = get_courses(info.industry, info.major, info.role)
    obj.rec_c = recommended_courses

    return [recommended_courses, recommended_majors]


# main method meant for testing
if __name__ == "__main__":

    # initialize and run the app
    uvicorn.run("main:app", host="127.0.0.1", port=5000, log_level="info")
    