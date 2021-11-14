import json
from requests import get
from types import resolve_bases



    
# get the json input from nebula based on course prefix
def get_json_course_prefix(cf: str) -> str:
    url = "https://api.utdnebula.com/v1/sections/search?course_prefix=" + cf
    resp = get(url=url, headers={
        "Authorization": "dd1h55UQUb8x5nQIPW2iJ1ABaIDx9iv7"
    })

    return resp.text

# get the json input from nebula based on term
def get_json_term(term:str) -> str:
    url = "https://api.utdnebula.com/v1/sections/search?term=" + term
    resp = get(url=url, headers={
        "Authorization": "dd1h55UQUb8x5nQIPW2iJ1ABaIDx9iv7"
    })

    return resp.text

# get the json input from nebula based on department
def get_json_department(department:str) -> str:
    url = "https://api.utdnebula.com/v1/sections/search?department=" + department
    resp = get(url=url, headers={
        "Authorization": "dd1h55UQUb8x5nQIPW2iJ1ABaIDx9iv7"
    })

    return resp.text

def get_json_course_prefix_number(cf: str, num: str) -> str:
    url = "https://api.utdnebula.com/v1/sections/search?course_prefix=" + cf + "&course_number=" + num
    resp = get(url=url, headers={
        "Authorization": "dd1h55UQUb8x5nQIPW2iJ1ABaIDx9iv7"
    })

    return json.loads(resp.text)

# return a list of current majors; to be called only once during init
def return_majors():
    resp_txt = get_json_term("21f")
    dict = json.loads(resp_txt)

    major_dict = {}
    for entry in dict:
        if entry["course_prefix"] not in major_dict:
            major_dict[entry["course_prefix"]] = entry["school"]


    return major_dict

# return a list of current courses; to be called only once during init
def return_courses():
    resp_txt = get_json_term("21f")
    dict = json.loads(resp_txt)

    course_dict = {}
    for entry in dict:
        if entry["course_number"] not in course_dict:
            course_dict[entry["course_number"]] = entry["title"]

    return course_dict
            