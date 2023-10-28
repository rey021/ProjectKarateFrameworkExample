Feature: Create Token

Scenario:
    Given url 'https://api.realworld.io/api'
    Given path 'users/login'
    And request {"user": {"email": "reymundlapera@gmail.com","password": "(BG-=78K.WUsbvUV"}}
    When method Post
    Then status 200
    * def authToken = response.user.token