from flask import Flask,  jsonify 
import os 
app = Flask(__name__)

@app.route('/')
def hello_world():
    return jsonify({
        'message': 'Hello World!',
        'app-lang': 'python',
        'environment': os.environ.get('ENVIRONMENT'),
        'namespace': os.environ.get('NAMESPACE'),
        'This application has been created by': 'Sahib Gasimov'
    })


if __name__ == '__main__':
    app.run(host='0.0.0.0', debug=True)
