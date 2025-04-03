Feature: Export result

  Scenario: Exportation du resultat
    Given url 'https://xray.cloud.getxray.app/api/v2/import/execution/cucumber'
    And header Accept = 'application/json'
    And header Authorization = 'Bearer ' + "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0ZW5hbnQiOiJiNmNhZGQwNS1lMzQxLTNmMTctYjU1Zi00OTM0MTI4MWQ4MmEiLCJhY2NvdW50SWQiOiI3MDEyMTo5YmQxYjU4Ny04OGJlLTQzZjctODg5MS1hYTY5ZDZmNjJjZTkiLCJpc1hlYSI6ZmFsc2UsImlhdCI6MTc0MzU4NDQ0MSwiZXhwIjoxNzQzNjcwODQxLCJhdWQiOiJBRkM5NTk0RTBBN0Y0Njk1OTJDODVGNUQ2QkRDNkVFQiIsImlzcyI6ImNvbS54cGFuZGl0LnBsdWdpbnMueHJheSIsInN1YiI6IkFGQzk1OTRFMEE3RjQ2OTU5MkM4NUY1RDZCREM2RUVCIn0.VUwge0XErNtvGxM3le4RBMKnbDbUGkkA8NJCGbwx7EE"
    And request read('C:/Users/IB/Desktop/Dev/KarateTP/KarateTP/target/cucumber.json')
    When method post
    Then status 200