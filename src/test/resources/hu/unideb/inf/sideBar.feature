#Feature: Saucedemo Side Bar
#
#  Background:
#    Given the home page is opened
#
#    # scenario outline + 3 test cases = 5 points
#  Scenario Outline: Check Side bar menu
#    When the 'Sidebar' button is clicked
#    When the '<option>' button is clicked
#    Then the user is directed to '<url>'
#    Then the number of items should be '<num>'
#    Examples:
#      | option | url | num |
#      | All Items | https://www.saucedemo.com/inventory.html | 0 |
#      | About     | https://saucelabs.com/                   | 0 |
#      | Logout    |https://www.saucedemo.com/                | 0 |
#
#
