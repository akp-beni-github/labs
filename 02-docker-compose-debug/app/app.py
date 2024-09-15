from typing import List, Dict
from flask import Flask
import mysql.connector
import json
import os

app = Flask(__name__)

def favorite_colors() -> List[Dict]:
    config = {
        'user': os.getenv('MYSQL_USER'),
        'password': os.getenv('MYSQL_PASSWORD'),
        'host': os.getenv('MYSQL_HOST'),
        'port': os.getenv('MYSQL_PORT'),
        'database': os.getenv('MYSQL_DATABASE')
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
