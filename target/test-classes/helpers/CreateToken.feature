Feature: Create Token

Scenario:
    Given url appUrl
    Given path 'users/login'
    And request {"user": {"email": "#(userEmail)","password": "#(password)"}}
    When method Post
    Then status 200
    * def authToken = response.user.token