Feature: Test POST - Créer un utilisateur

  Scenario: Vérifier la création d'un utilisateur
    Given url "https://reqres.in/api/users"
    And request { "name": "morpheus", "job": "leader" }
    When method post
    Then status 201
    And match response.name == "morpheus"
    And match response.job == "leader"
    And match response.id == '#notnull'
    And print response


