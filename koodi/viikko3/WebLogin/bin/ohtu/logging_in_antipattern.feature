Feature: As a registered user can log in with valid username/password-combination

Scenario: user can login with correct password
    Given login is selected
    When username "jukka" and password "akkuj" are given
    Then system will respond "Ohtu Application main page"

Scenario: user can not login with incorrect password
    Given login is selected
    When username "jukka" and password "wrong" are given
    Then system will respond "invalid username or password"

Scenario: login fails with correct username and incorrect password
    Given login is selected
    When username "jukka" and password "asdf" are given
    Then system will respond "invalid username or password"

Scenario: login fails with no existing username
    Given login is selected
    When username "asdf" and password "akkuj" are given
    Then system will respond "username not found"

Scenario: new username is created
    Given new username is selected
    When new username "x" are given
    Then system will respond "new username created"

Scenario: new username is created and logged out
    Given new username is selected
    When username "x" are given and logged out
    Then system will respond "new username created and logged out successfully"