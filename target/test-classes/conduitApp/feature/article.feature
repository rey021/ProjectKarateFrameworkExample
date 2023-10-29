@tokenTest
Feature: Articles

    Background: Define URL
        Given url appUrl


    Scenario: Create new article
        Given path 'articles'
        And request {"article": {"title": "1234123","description": "etseeets","body": "setset","tagList": []}}
        When method Post
        Then status 201
        And match response.article.title == '12321'