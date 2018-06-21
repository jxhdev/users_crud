from flask import Flask, request, render_template, url_for, redirect
from flask_modus import Modus
from flask_debugtoolbar import DebugToolbarExtension
from flask_sqlalchemy import SQLAlchemy

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
    userid = db.Column(db.Integer, db.ForeignKey('users.id'))

    tags = db.relationship(
        'Tag', secondary='messages_tags', backref=db.backref('messages'))


class Tag(db.Model):

    __tablename__ = 'tags'

    id = db.Column(db.Integer, primary_key=True)
    content = db.Column(db.Text)


messages_tags = db.Table(
    'messages_tags', db.Column('id', db.Integer, primary_key=True),
    db.Column('message_id', db.Integer, db.ForeignKey('messages.id')),
    db.Column('tag_id', db.Integer, db.ForeignKey('tags.id')),
    db.UniqueConstraint('message_id', 'tag_id', name='uniq'))

db.create_all()


@app.route('/')
def hey():
    return 'Hey wrong route buddy'


@app.route('/users')
def users():
    return render_template(
        'users.html', users=User.query.order_by(User.id).limit(20).all())


@app.route('/users/<int:user_id>')
def show_user(user_id):
    return render_template('user.html', user=User.query.get(user_id))


@app.route('/users/<int:user_id>', methods=["PATCH"])
def edit_user(user_id):

    user = User.query.get_or_404(user_id)
    user.first_name = request.form['first_name']
    user.last_name = request.form['last_name']
    user.email = request.form['email']
    user.cc_number = request.form['cc_number']
    user.gender = request.form['gender']
    db.session.commit()

    return redirect(url_for('users'))


@app.route('/users/<int:user_id>', methods=["DELETE"])
def delete_user(user_id):

    user = User.query.get_or_404(user_id)
    db.session.delete(user)
    db.session.commit()

    return redirect(url_for('users'))


@app.route('/users/<int:user_id>/messages')
def show_user_messages(user_id):
    user = User.query.get(user_id)
    tag = Tag.query.all()
    return render_template('messages.html', user=user, tags=tag)


@app.route('/users/<int:user_id>/messages', methods=["POST"])
def add_message_by_user(user_id):
    message = Message(userid=user_id, content=request.form['message'])
    tag_ids = request.form.getlist('tags')
    message.tags = Tag.query.filter(Tag.id.in_(tag_ids)).all()
    db.session.add(message)
    db.session.commit()
    return redirect(url_for('show_user_messages', user_id=user_id))


@app.route(
    '/users/<int:user_id>/messages/<int:message_id>/edit', methods=["GET"])
def edit_message_by_user(user_id, message_id):
    message = Message.query.get_or_404(message_id)
    return render_template('edit_message.html', message=message)


@app.route('/users/<int:user_id>/messages/<int:message_id>', methods=["PATCH"])
def update_message_by_user(user_id, message_id):
    msg = Message.query.get_or_404(message_id)
    msg.content = request.form['message']
    db.session.commit()
    return redirect(
        url_for('show_user_messages', user_id=user_id, message_id=message_id))


@app.route(
    '/users/<int:user_id>/messages/<int:message_id>', methods=["DELETE"])
def delete_message_by_user(user_id, message_id):
    msg = Message.query.get_or_404(message_id)
    db.session.delete(msg)
    db.session.commit()
    return redirect(url_for('show_user_messages', user_id=user_id))


@app.route('/messages/tags/<int:tag_id>')
def show_messages_by_tags(tag_id):
    tag = Tag.query.get(tag_id)
    return render_template('tags_messages.html', tag=tag)
