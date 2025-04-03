Feature: Mettre à jour une réservation

  Scenario: Création d'une réservation et mise à jour du totalprice
    Given url 'https://restful-booker.herokuapp.com/booking'
    And header Accept = 'application/json'
    And request {"firstname": "Pierre","lastname": "Martin","totalprice": 150,"depositpaid": true,"bookingdates": {"checkin": "2024-05-01","checkout": "2024-05-05"},"additionalneeds": "Petit déjeuner"}
    When method post
    Then status 200
    And match response.bookingid == '#notnull'
    * def bookingId = response.bookingid

    Given url 'https://restful-booker.herokuapp.com/booking/' + bookingId
    And header Accept = 'application/json'
    And request {"firstname": "Pierre","lastname": "Martin","totalprice": 200,"depositpaid": true,"bookingdates": {"checkin": "2024-05-01","checkout": "2024-05-05"},"additionalneeds": "Petit déjeuner"}
    When method put
    Then status 403
