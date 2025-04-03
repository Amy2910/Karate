Feature: Exercice POST – Générer un Token d'Authentification

  Scenario: Générer un token et vérifier sa validité
    Given url 'https://restful-booker.herokuapp.com/auth'
    And header Accept = 'application/json'
    And request {"username": "admin","password": "password123"}

    When method post
    Then status 200
    And match response.token == "#notnull"
    And match response.token == "#string"
    And print 'Token généré:', response.token
