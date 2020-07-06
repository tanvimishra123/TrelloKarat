Feature: Automate Trello

  Background:

    * def createBoard = read('createBoard.feature')
    * def listName = 'list8'

  Scenario: update Board

    * call createBoard
    When input(locator.enterListTitle,listName)
    And delay(3000)
    And waitFor(locator.addList).click()
    And delay(3000)
    * print driver.text(locator.listNameText)
    And delay(5000)
    Then match driver.text(locator.listNameText) contains listName


