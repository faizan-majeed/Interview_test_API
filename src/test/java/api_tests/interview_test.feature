Feature: Verify user exists

  Scenario: Verify scenario 1
    Given def userPage1 = call read('classpath:commons/get.all.users.feature') { PAGE: 1}
    When match userPage1.response contains {"page": 1}
    Then match userPage1.response.data[*].email contains ["#(EMAIL_PAGE1)"]
    Then match userPage1.response.data[*].first_name contains ["#(FIRST_NAME_PAGE1)"]
    Then match userPage1.response.data[*].last_name contains ["#(LAST_NAME_PAGE1)"]
    Then match userPage1.response.data[*].avatar contains ["#(AVATAR_PAGE1)"]


  Scenario: Verify scenario 2
    Given def userPage2 = call read('classpath:commons/get.all.users.feature') { PAGE: 2}
    When match userPage2.response contains {"page": 2}
    Then match userPage2.response.data[*].email contains ["#(EMAIL_PAGE2)"]
    Then match userPage2.response.data[*].first_name contains ["#(FIRST_NAME_PAGE2)"]
    Then match userPage2.response.data[*].last_name contains ["#(LAST_NAME_PAGE2)"]
    Then match userPage2.response.data[*].avatar contains ["#(AVATAR_PAGE2)"]

  Scenario: Verify scenario 3
    Given def userPage12 = call read('classpath:commons/get.all.users.feature') { PAGE: 12}
    When match userPage12.response contains {"page": 12}
    Then match userPage12.response.data[*] == []
