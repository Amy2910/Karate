Feature: Authentification

  Scenario: Génération token
    Given url 'https://xray.cloud.getxray.app/api/v2/authenticate'
    And request { "client_id": "AFC9594E0A7F469592C85F5D6BDC6EEB", "client_secret": "ae0402b7075192c2a554bde07c9ee9ff424e3ab764a1ac082fda09aa39b370f8" }
    And header Content-Type = 'application/json'
    When method POST
    Then status 200
    And match response == "#string"

    * def token = response
    * print 'Token received:', token
