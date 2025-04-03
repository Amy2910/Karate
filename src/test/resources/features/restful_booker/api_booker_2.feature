Feature: Récupérer une réservation par ID

  Scenario: Vérifier les informations d'une réservation
    Given url 'https://restful-booker.herokuapp.com/booking/1'
    And header Accept = 'application/json'
    When method get
    Then status 200
    And match response.firstname == '#notnull'
    And match response.lastname == '#notnull'
    And match response.totalprice == '#notnull'
