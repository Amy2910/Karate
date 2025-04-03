Feature: Tester la création d'un utilisateur en utilisant un fichier JSON externe

  Scenario: Tester la création d'un utilisateur
    Given url "https://reqres.in/api/users"
    And request read('user.json')
    When method post
    Then status 201
    And match response.name == 'John Doe'
    And match response.job == 'Automation Tester'
    And match response.id == '#notnull'
    And print response
