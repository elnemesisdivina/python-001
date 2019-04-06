import json

from bottle import response, get, run

nombres = ["Maricela", "Alonso", "Navi"]

@get("/nombre")
def get_nombres():
    response.headers['Content-Type'] = 'application/json'
    return json.dumps({"nombres":list (nombres)})

run(host='0.0.0.0', port=8080)
