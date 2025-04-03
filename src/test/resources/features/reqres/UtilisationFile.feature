Feature: Utilisation d’un fichier JSON en Karate DSL

  Scenario: Tester la création d'un utilisateur
    * def json = read('users.json')
    * print json
    Given url "https://reqres.in/api/users"
    And request json
    When method post
    Then status 201
    And match response.id == '#notnull'
    And print response


