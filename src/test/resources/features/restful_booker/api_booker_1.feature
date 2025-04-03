Feature: Récupérer toutes les réservations

  Scenario: Vérifier la liste des réservations
    Given url 'https://restful-booker.herokuapp.com/booking'
    When method get
    Then status 200
    And match response != []
    And print response
