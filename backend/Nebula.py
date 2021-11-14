import requests

class Nebula:
    def __init__(self) -> None:
        
        self.header = {
            "Authorization": "dd1h55UQUb8x5nQIPW2iJ1ABaIDx9iv7"
        }
    
    def get_json_course_prefix(self, cf: str) -> str:
        url = "https://api.utdnebula.com/v1/sections/search?course_prefix=" + cf
        resp = requests.get(url=url, headers=self.header)

        return resp.text
    
    def get_json_term(self, term:str) -> str:
        url = "https://api.utdnebula.com/v1/sections/search?term=" + term
        resp = requests.get(url=url, headers=self.header)

        return resp.text
    
    def get_json_department(self, department:str) -> str:
        url = "https://api.utdnebula.com/v1/sections/search?department=" + department
        resp = requests.get(url=url, headers=self.header)

        return resp.text
            