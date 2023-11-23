Feature: Saucedemo Side Bar

  Background:
    Given the home page is opened
    And the 'Username' field is filled with 'standard_user'
    And the 'Password' field is filled with 'secret_sauce'
    And the 'Login' button is clicked

#  Scenario: Check Reset App State
#    Given the 'Test.allTheThings() T-Shirt (Red)' is added to the cart
#    And the 'Sidebar' button is clicked
#    When the 'Reset App State' button is clicked
#    Then the number of items should be '0'

    # scenario outline + 3 test cases = 5 points
  Scenario Outline: Check Side bar menu
    Given the 'Sidebar' button is clicked
    When the '<option>' button is clicked
    Then the user is directed to '<url>'
    Examples:
      | option    | url                                      |
      | All Items | https://www.saucedemo.com/inventory.html |
      | About     | https://saucelabs.com/                   |
      | Logout    | https://www.saucedemo.com/               |
