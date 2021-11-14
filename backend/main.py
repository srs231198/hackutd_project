from types import resolve_bases
from typing import Optional
import json
from Nebula import test

import uvicorn

from fastapi import FastAPI
from pydantic import BaseModel

app = FastAPI()
# ["CS", "SE", "ACCT"]
# ["CS 2336", "CS 1337", "CS 4301"]


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
    obj = test()

    # recommended_majors = obj.majors

    # return recommended_majors

    return obj.return_majors()

# GET request to return the recommended classes for the user
@app.get("/classes/")
def return_classes():
    obj = test()

    # recommended_classes = obj.courses

    # return recommended_classes
    return "classes"

# POST request to 
# {
#     industry:""
#     role:""
#     courses:[]
# }

@app.post("/graduate/")
def student_info(info: graduate_info):
    return info


# main method meant for testing
if __name__ == "__main__":

    uvicorn.run("main:app", host="127.0.0.1", port=5000, log_level="info")
    # print("%%%%%%%%%%%%%%%%%%%%%%%%%%%")
    # print(obj.majors)
    # print("%%%%%%%%%%%%%%%%%%%%%%%%%%%")
    # print(obj.courses)