Feature: Test avec Variables et Assertions Dynamiques

  Scenario: Créer un utilisateur et vérifier son existence
    Given url "https://reqres.in/api/users"
    And request { "name": "karine", "job": "QA" }
    When method post
    Then status 201
    And match response.name == "karine"
    And match response.job == "QA"
    And match response.id == "#notnull"

    * def userId = 2

    Given url "https://reqres.in/api/users/" + userId
    When method get
    Then status 200
    And match response.data.id == userId


