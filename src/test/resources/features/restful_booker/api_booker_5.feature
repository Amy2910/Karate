Feature: Exercice DELETE – Supprimer une réservation (simulé)
Scenario: Suppresion reservation
  Given url "https://restful-booker.herokuapp.com/booking/1"
  And header Accept = 'application/json'
  When method delete
  Then status 403
  And print response
