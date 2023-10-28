@asd
Feature: Test for the homepage

Background: Define URL
    Given url 'https://api.realworld.io/api'

    @debug
    Scenario: Get all tags
        Given path 'tags'
        When method Get
        Then status 200
        And match response.tags contains 'welcome'

    Scenario: Get 10 articles from the page
        Given params { limit: 10, offset: 0}
        Given path 'articles'
        When method Get
        Then status 200      