Feature: Test POST avec création de données
  Scenario: Test POST avec création de données
    Given url 'https://jsonplaceholder.typicode.com/posts'
    And request {"userId": 1,"title": "Mon title","body": "corps du message"}
    And header Accept = 'application/json'
    When method post
    Then status 201
    And match response.id == '#notnull'
    And match response.userId == 1
    And match response.title == 'Mon title'
    And match response.body == 'corps du message'
    And print response
