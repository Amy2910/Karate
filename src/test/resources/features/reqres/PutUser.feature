Feature: Test PUT - Mettre à jour un utilisateur

  Scenario: Vérifier la mise à jour
    Given url "https://reqres.in/api/users/2"
    And request { "name": "morpheus", "job": "zion resident" }
    When method put
    Then status 200
    And match response.job == "zion resident"
    And print response

