import pytest

from flask import  session

def test_login(client, auth):
    assert client.get('/').status_code == 200
    response = auth.login()
    assert response.headers['Location'] == 'http://localhost/home'

    #making sure students can login and go to the correct page
    response = auth.student_login()
    assert response.headers['Location'] == 'http://localhost/student'


@pytest.mark.parametrize(('email', 'password', 'message'), (
    ('a', 'teacher@stevenscollege.edu', b'Incorrect email or password!'),
    ('qwerty', 'a', b'Incorrect email or password!'),
))
def test_login_validate_input(auth, email, password, message):
    response = auth.login(email, password)
    assert message in response.data
def test_logout(client, auth):
    auth.login()

    with client:
        auth.logout()
        assert 'course_id' not in session
