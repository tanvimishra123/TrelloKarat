Feature: Automate Trello

  Background:

    * def login = read('trelloLogin.feature')
    * def boardName = 'board32'


  Scenario: Create Board
    * call login

    When waitFor(locator.remindMeLaterBtn).click()
    And delay(3000)
    And waitFor(locator.addButton).click()
    And delay(3000)
    And waitFor(locator.createBoardBtn).click()
    And delay(3000)
    And input(locator.boardNameText,boardName)
    And delay(3000)
    And waitFor(locator.createBoardButton).click()
    And delay(8000)
    * print "++++++++++++",driver.getTitle()
    And delay(5000)
    Then match driver.getTitle() contains boardName






