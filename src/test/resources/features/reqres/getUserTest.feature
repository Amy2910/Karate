Feature: Récupération des informations d'un utilisateur

  Scenario: Récupérer les informations de l'utilisateur 2
    Given url "https://reqres.in/api/users/2"
    When method get
    Then status 200
    And match response.data.id == 2
    And match response.data.email contains "@reqres.in"
    And match response.data.first_name == "Janet"

