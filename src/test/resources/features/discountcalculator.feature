Feature: Discount Calculation

  Scenario Outline: Calculate discount based on amount
    * def DiscountCalculator = Java.type('utils.DiscountCalculator')
    * def calculator = new DiscountCalculator()
    * def resultat = calculator.calculateDiscount(<amount>)
    Then match resultat == <expected>

    Examples:
      | amount  | expected |
      | 500     | 10.0     |
      | 1000    | 20.0     |
      | 2000    | 100.0    |
