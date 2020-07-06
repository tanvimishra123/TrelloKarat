Feature: Trello

  Background:
    * configure driver = { type: 'chrome' }
    * def userName = 'tanvi.m@qapitol.com'
    * def password = '12345678'
    * def locator = read('locator.json')

    Scenario: login

    Given driver 'https://trello.com'
    * def x = function f() { driver.maximize()}
    * def x1 = x()
    * def y = function f1(a,b) { t = a + b; return t}
    * def y1 = f1(4,5)
    * print "*************************"
    * print y1
    #When driver.maximize()
    And click('{a}Log In')
    And delay(10000)
    And input(locator.username, userName)
    And delay(9000)
    And input(locator.password, password)
    And delay(2000)
    And click('#login')
    And delay(9000)
    * print driver.title, "------"
    And delay(9000)
    Then match driver.title contains 'Trello'
