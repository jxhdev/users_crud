import unittest
from random import randint
from app import app, User, db, Message


class UserCrudIntegrationTestCase(unittest.TestCase):
    def test_index(self):
        client = app.test_client()

        result = client.get('/', follow_redirects=True)
        self.assertIn(b'Don\'t Read These Very Private Messages!', result.data)

    def test_show_users(self):
        client = app.test_client()

        result = client.get('/users')
        self.assertIn(b'Don\'t Read These Very Private Messages!', result.data)

    def test_show_user(self):
        client = app.test_client()

        result = client.get('/users/8')
        self.assertIn(b'<form action="/users/8?_method=PATCH"', result.data)

    def test_show_create_user_page(self):
        client = app.test_client()

        result = client.get('/users/add')
        self.assertIn(b'<h1>Create</h1>', result.data)

    def test_create_user(self):
        client = app.test_client()

        result = client.post(
            '/users',
            data={
                'avatar_url':
                'https://robohash.org/saepererumqui.jpg?size=100x100&set=set1',
                'first_name':
                'Jasonthisisacreatedtest',
                'last_name':
                'Hu',
                'email':
                'jasonhu@testsite.com',
                'cc_number':
                123456788314134,
                'gender':
                'male'
            },
            follow_redirects=True)
        self.assertIn(b'<td>Jasonthisisacreatedtest</td>', result.data)

    def test_edit_user(self):
        client = app.test_client()

        result = client.post(
            '/users/6?_method=PATCH',
            data={
                'first_name': 'Jasonthisisatest',
                'last_name': 'Test',
                'email': 'email@email.com',
                'cc_number': 'creditocardonumbero',
                'gender': 'male'
            })
        # self.assertIn(b'<form action="/users/5?_method=PATCH"', result.data)

        # make sure this redirects
        self.assertEqual(result.status_code, 302)

        # make sure this got saved in database
        user = User.query.get(6)
        self.assertEqual(user.first_name, "Jasonthisisatest")
        self.assertEqual(user.last_name, 'Test')

    def test_delete_user(self):
        client = app.test_client()

        user = User.query.filter_by(
            first_name='Jasonthisisacreatedtest').first()
        result = client.post(f'/users/{user.id}?_method=DELETE')
        self.assertEqual(result.status_code, 302)

    def test_show_user_messages(self):
        client = app.test_client()

        result = client.get(f'/users/8/messages')
        self.assertEqual(result.status_code, 200)
        self.assertIn(b'Why are you reading', result.data)

    def test_add_message_by_user(self):
        client = app.test_client()

        result = client.post(
            '/users/8/messages',
            data={
                'userid': 8,
                'message': 'Hey this is a new message!'
            },
            follow_redirects=True)

        self.assertIn(b'Hey this is a new message!', result.data)

        id = Message.query.filter_by(
            userid=8, content='Hey this is a new message!').first().id
        client.post(f'/users/8/messages/{id}?_method=DELETE')

    def test_update_message_by_user(self):
        client = app.test_client()

        random = randint(1, 10)
        result = client.post(
            '/users/9/messages/44?_method=PATCH',
            data={'message': f"{random}This is a new message"},
            follow_redirects=True)

        self.assertIn(f'{random}This is a new message'.encode('ascii'),
                      result.data)

    def test_delete_message_by_user(self):
        client = app.test_client()

        client.post(
            '/users/8/messages',
            data={
                'userid': 8,
                'message': 'Hey this should not be here!!'
            })

        id = Message.query.filter_by(
            userid=8, content='Hey this should not be here!!').first().id
        result = client.post(f'/users/8/messages/{id}?_method=DELETE')
        self.assertEquals(result.status_code, 302)

        result = client.get('/users/8/messages')
        self.assertNotIn(b'Hey this should not be here!!', result.data)


if __name__ == "__main__":
    unittest.main()