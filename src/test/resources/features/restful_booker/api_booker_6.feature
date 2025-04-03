Feature: Exercice GET – Vérifier un champ spécifique

  Scenario: Vérifier que le firstname de la réservation 1 est Susan
    Given url 'https://restful-booker.herokuapp.com/booking/1'
    And header Accept = 'application/json'
    When method get
    Then status 200
    And match response.firstname == "Sally"
    And print 'Firstname récupéré:', response.firstname
