from typing import Optional

from fastapi import FastAPI
from pydantic import BaseModel

app = FastAPI()

# GET request to return the recommended majors fo the user
@app.get("/majors/")
def return_major():
    return ["CS", "SE", "ACCT"]

# GET request to return the recommended classes for the user
@app.get("/classes/")
def return_classes():
    return ["CS 2336", "CS 1337", "CS 4301"]

# POST request to 
@app.post("/post/")
def post_func():
    pass