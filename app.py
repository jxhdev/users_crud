from flask import Flask, request, render_template, url_for, redirect
from flask_modus import Modus
from flask_debugtoolbar import DebugToolbarExtension
from flask_sqlalchemy import SQLAlchemy
from IPython import embed

app = Flask(__name__)

app.config['SECRET_KEY'] = 'ihaveasecret'
modus = Modus(app)
toolbar = DebugToolbarExtension(app)

app.config['SQLALCHEMY_DATABASE_URI'] = "postgres://localhost/users_crud"
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
app.config['SQLALCHEMY_ECHO'] = True
app.config['DEBUG_TB_INTERCEPT_REDIRECTS'] = False

db = SQLAlchemy(app)


class User(db.Model):

    __tablename__ = 'users'

    id = db.Column(db.Integer, primary_key=True)
    first_name = db.Column(db.Text)
    last_name = db.Column(db.Text)
    email = db.Column(db.Text)
    cc_number = db.Column(db.Text)
    gender = db.Column(db.Text)
    avatar_url = db.Column(db.Text)
    messages = db.relationship("Message", backref="user")


class Message(db.Model):

    __tablename__ = 'messages'

    id = db.Column(db.Integer, primary_key=True)
    content = db.Column(db.Text)
    user_id = db.Column(db.Integer, db.ForeignKey('users.id'))


@app.route('/')
def hey():
    return 'Hey wrong route'


@app.route('/users')
def users():
    return render_template('users.html', users=User.query.limit(10).all())


@app.route('/users/<int:user_id>')
def show_user(user_id):
    return render_template('user.html', user=User.query.get(user_id))


@app.route('/users/<int:user_id>/messages')
def show_user_messages(user_id):
    return render_template('messages.html', user=User.query.get(user_id))


# jason = User(
#     first_name='jason',
#     last_name='hu',
#     email='fbest0@joomla.org',
#     cc_number='201900518399173',
#     gender='male',
#     avatar_url=
#     'https://robohash.org/veltemporaquibusdam.png?size=100x100&set=set1')
# db.session.add(jason)
# db.session.commit()
