from typing import List, Dict
from flask import Flask
import mysql.connector
import json
import os

app = Flask(__name__)

def favorite_colors() -> List[Dict]:
    config = {
        'user': os.getenv('CONFIG_DB_USER'),
        'password': os.getenv('CONFIG_DB_PASS'),
        'host': os.getenv('CONFIG_DB_HOST'),
        'port': os.getenv('CONFIG_DB_PORT'),
        'database': os.getenv('CONFIG_DB_NAME')
    }
    connection = mysql.connector.connect(**config)
    cursor = connection.cursor()
    cursor.execute('SELECT * FROM favorite_colors')
    results = [{name: color} for (name, color) in cursor]
    cursor.close()
    connection.close()

    return results

@app.route('/')
def index() -> str:
    return json.dumps({'favorite_colors': favorite_colors()})

if __name__ == '__main__':
    app.run(host='0.0.0.0')
