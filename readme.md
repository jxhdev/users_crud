# Messages App

You've been "accidentally" given access to this database and can read and manipulate everyone's messages and private data. :(

## Getting Started

### Prerequisites

```
pip install -r requirements.txt
```

### Installing

Make a virtualenv

```python
mkvirtualenv user_crud
workon user_crud
pip install -r requirements.txt
```

Create db in shell

```
createdb users_crud
```

Run flask from venv to create the models

```
flask run
```

Should work out of the box but it's pretty barebones so you can seed the data from users.sql. Run flask first to create the models first.

In shell

```sh
psql < users.sql
```

Connect to `localhost:FLASK_PORT_NUMBER` in your browser

## Running the tests

```
python test_app.py
```

## Built With

- Flask
- PostgreSQL
- SQLAlchemy

## Authors

- **Jason Hu** - [RithmSchool](https://github.com/rithmschool)

## Acknowledgments

### Rithm School

- [Elie Schoppik](https://github.com/elie)
- [Matt Lane](https://github.com/mmmaaatttttt/)
- [Joel Burton](https://github.com/joelburton/)
- [Michael Hueter](https://github.com/hueter)
