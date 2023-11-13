Feature: Saucedemo Shopping

  Background:
    Given the home page is opened
    And the 'Username' field is filled with 'standard_user'
    And the 'Password' field is filled with 'secret_sauce'
    And the 'Login' button is clicked

    # scenario outline + 3 test cases = 5 points
  Scenario Outline: Incorrect checkout attempts
    Given the 'Cart' button is clicked
    And the 'Checkout' button is clicked
    And the 'First Name' field is filled with '<firstName>'
    And the 'Last Name' field is filled with '<lastName>'
    And the 'Zip Code' field is filled with '<zipcode>'
    When the 'Continue' button is clicked
    Then the '<errorMessage>' checkout message is shown
    Examples:
      | firstName | lastName | zipcode | errorMessage |
      |           |          |         | Error: First Name is required |
      | Adam      |          |         | Error: Last Name is required |
      | Adam      | Sandler  |         | Error: Postal Code is required |

    # scenario outline + 4 test cases = 6 points
  Scenario Outline: Keep adding an item
    Given the '<item>' is added to the cart
    And the 'Cart' button is clicked
    And the 'Checkout' button is clicked
    And the 'First Name' field is filled with '<firstName>'
    And the 'Last Name' field is filled with '<lastName>'
    And the 'Zip Code' field is filled with '<zipcode>'
    When the 'Continue' button is clicked
    Then the price should read '<total>'
    Examples:
      | item | firstName | lastName | zipcode | total |
      | Sauce Labs Backpack | Angel | Dust | 111 | Total: $32.39 |
      | Test.allTheThings() T-Shirt (Red) | Mickey | Mouse | 1010 | Total: $49.66 |
      | Sauce Labs Bolt T-Shirt | Sponge | Bob | 4001 | Total: $66.93 |
      | Sauce Labs Bike Light | Isaac | Newton | 3005 | Total: $77.72 |