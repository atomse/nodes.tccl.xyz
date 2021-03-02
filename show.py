from flask import Flask
from json2html import json2html
import json
import glob


app = Flask(__name__)


@app.route('/json')
def show_result():
    res = {}
    for f in glob.glob('*.res'):
        res[f[:len(f)-4]] = json.load(open(f))
    return res

@app.route('/')
def show_html():
    res = show_result()
    return json2html.convert(json=res)


if __name__ == '__main__':
    app.run(host='::', port=5000, debug=True)
