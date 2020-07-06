Feature: Automate Trello

  Background:
    * def updateBoard = read('updateBoard.feature')
    * def boardName = 'board23'

  Scenario: Delete Board

    * call updateBoard
    When waitFor(locator.moreButton).click()
    And delay(5000)
    And click('{^a}Close Board')
    And delay(3000)
    And waitFor(locator.closeButton).click()
    And delay(3000)
    And click('{^a}Permanently Delete Board')
    And delay(8000)
    And print "***************",driver.text(locator.boardNotFoundText)
    And delay(8000)
    Then match driver.text(locator.boardNotFoundText) contains 'closed'

