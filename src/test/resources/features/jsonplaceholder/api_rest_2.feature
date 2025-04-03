Feature: Enchaînement de requêtes et vérification des posts d'un utilisateur

  Scenario: Vérifier que tous les posts retournés appartiennent au bon userId
    Given url 'https://jsonplaceholder.typicode.com/users'
    And header Accept = 'application/json'
    When method get
    Then status 200
    * def userId = response[0].id

    Given url 'https://jsonplaceholder.typicode.com/posts'
    And param userId = '#(userId)'
    When method get
    Then status 200
    And def posts = response
    * match each posts[*].userId == userId

