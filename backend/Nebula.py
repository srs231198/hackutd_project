import requests
import json
import bs4 as bs


header = {
    "Authorization": "dd1h55UQUb8x5nQIPW2iJ1ABaIDx9iv7"
}

resp = requests.get("https://api.utdnebula.com/v1/sections/search?course_prefix=se", headers=header)

with open("sp2018.txt", "r") as s:
    y = json.loads("".join(s.readlines()))
    print(y)