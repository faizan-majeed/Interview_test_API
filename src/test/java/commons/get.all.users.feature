Feature: Common get all users

  Scenario: Get all user from page 1

    Given url URL
    And params {page: '#(PAGE)'}
    And method get
    Then status 200
#    * print response
