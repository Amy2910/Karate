Feature: Calculator Addition

  Scenario: Addition of two numbers using Java interop
    * def Calculator = Java.type('utils.Calculator')
    * def result = Calculator.addition(3, 4)
    Then match result == 7
    And print result
