from flask import Flask, render_template
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'postgresql://username:password@localhost/your_database'
db = SQLAlchemy(app)

# Define your database model
class Route(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(50), nullable=False)
    link = db.Column(db.String(100), nullable=False)

@app.route('/')
def home():
    routes = Route.query.all()  # Fetch all routes from the database
    return render_template('home.html', routes=routes)

if __name__ == '__main__':
    app.run(debug=True)


