@tokenTest
Feature: Articles

    Background: Define URL
        Given url 'https://api.realworld.io/api'
        * def tokenResponse = call read{'classpath:helpers/CreateToken.feature'}
        * def token = tokenResponse.authToken

    Scenario: Create new article
        Given header Authorization = 'Token ' + token
        Given path 'articles'
        And request {"article": {"title": "1234123","description": "etseeets","body": "setset","tagList": []}}
        When method Post
        Then status 201
        And match response.article.title == '12321'