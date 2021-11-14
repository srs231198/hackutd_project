# hackutd_project
Project for HackUTD
- - -
Database:
Table Name: graduates
| Column Name  | Column Datatype  |
|--------------|------------------|
| industry      | VARCHAR(50)      |
| role              | VARCHAR(50)      |
| course         | VARCHAR(50)      |
| major           | VARCHAR(50)      |

- - -
POST Endpoint (/graduate):
POST Body:
```json
{
  "industry": "Software",
  "role": "Project Manager",
  "major": "Computer Science",
  "courses": [
    "cs1223",
    "cs4337"
  ]
}
```
POST Response Body:
```200 OK```
- - -

GET Endpoint (/majors):
GET Body:
```json
{
  "industry": "Software"
}
```
GET Response Body:
```json
[
  "Computer Science",
  "Software Engineering",
  "Computer Engineering"
]
```
- - -

GET Endpoint (/classes):
GET Body:
```json
{
  "industry": "Software",
  "role": "Project Manager",
  "major": "Computer Science"
}
```
GET Response Body:
```json
{
  "classes": [
    {
      "number": "cs4337",
      "sections": [
        "001",
        "004",
        "0W1"
      ]
    },
    {
      "number": "cs1337",
      "sections": [
        "007",
        "002",
        "0W4"
      ]
    },
    {
      "number": "cs2340",
      "sections": [
        "008",
        "003",
        "0W1"
      ]
    }
}
```
