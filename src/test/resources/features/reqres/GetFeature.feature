Feature: Télécharger les features en ZIP depuis Xray
  Scenario: Télécharger et enregistrer le fichier ZIP
    Given url 'https://xray.cloud.getxray.app/api/v2/export/cucumber?keys=POEI20252-613'
    And header Authorization = 'Bearer ' + "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0ZW5hbnQiOiJiNmNhZGQwNS1lMzQxLTNmMTctYjU1Zi00OTM0MTI4MWQ4MmEiLCJhY2NvdW50SWQiOiI3MDEyMTo5YmQxYjU4Ny04OGJlLTQzZjctODg5MS1hYTY5ZDZmNjJjZTkiLCJpc1hlYSI6ZmFsc2UsImlhdCI6MTc0MzU4NDQ0MSwiZXhwIjoxNzQzNjcwODQxLCJhdWQiOiJBRkM5NTk0RTBBN0Y0Njk1OTJDODVGNUQ2QkRDNkVFQiIsImlzcyI6ImNvbS54cGFuZGl0LnBsdWdpbnMueHJheSIsInN1YiI6IkFGQzk1OTRFMEE3RjQ2OTU5MkM4NUY1RDZCREM2RUVCIn0.VUwge0XErNtvGxM3le4RBMKnbDbUGkkA8NJCGbwx7EE"
    And header Accept = 'application/json'
    When method get
    Then status 200


    * def filePath = 'src/test/resources/exported.zip'
    * karate.write(responseBytes, filePath)
    * print 'Fichier téléchargé:', filePath
