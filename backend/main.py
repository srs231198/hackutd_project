from types import resolve_bases
from typing import List, Optional
import json
import re
import Nebula
from azureDB import get_majors, get_courses, upload_graduates

import uvicorn

from fastapi import FastAPI, Response, status
from pydantic import BaseModel

app = FastAPI()

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
    courses: List[str]

# GET request to return the recommended majors fo the user
@app.get("/majors")
def return_major(industry: str, response: Response):
    array = []
    if industry == "":
        response.status_code = status.HTTP_400_BAD_REQUEST
        return
    res = get_majors(industry)

    for major in res:
        array.append(major[0])

    # return recommended_majors

    return array

# GET request to return the recommended classes for the user
@app.get("/classes")
def return_classes(industry: str, role: str, major: str):
    res = get_courses(industry, major, role)
    print(res)
    # recommended_classes = obj.courses
    # return recommended_classes
    reg = re.compile("([a-zA-Z]+)([0-9]+)")
    schema = {"classes": []}
    for course in range(0, len(res)):
        temp = reg.match(res[course][0]).groups()
        schema["classes"].append({"number": temp[1], "sections": []})
        print(schema["classes"][0]["number"])
        # .append(section["section_number"])
        lol = Nebula.get_json_course_prefix_number(temp[0], temp[1])
        print(lol)
        for section in lol:
            if section["section_number"] not in schema["classes"][course]["sections"]:
                schema["classes"][course]["sections"].append(section["section_number"])
    return schema

# POST request to 
# {
#     industry:""
#     role:""
#     courses:[]
# }

@app.post("/graduate")
def student_info(info: graduate_info):
    upload_graduates(info.industry, info.major, info.role, info.courses)
    return


# main method meant for testing
if __name__ == "__main__":

    # initialize and run the app
    uvicorn.run("main:app", host="127.0.0.1", port=5000, log_level="info")
    