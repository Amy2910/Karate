Feature: Test DELETE - Supprimer un utilisateur

  Scenario: Vérifier la suppression d'un utilisateur
    Given url "https://reqres.in/api/users/2"
    When method delete
    Then status 204
    And print response
