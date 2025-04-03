Feature: Validation de Schéma JSON

  Scenario: Vérifier la structure de la réponse de GET /api/users/2
    Given url "https://reqres.in/api/users/2"
    When method get
    Then status 200
    And match response ==
    """
    {
      "data": {
        "id": #number,
        "email": "#string",
        "first_name": "#string",
        "last_name": "#string",
        "avatar": "#string"
      },
      "support": {
        "url": "#string",
        "text": "#string"
      }
    }
    """
