Feature: Acceptance Test for the
  factorial() function of Calculator

  Background:
    Given I am using the calculator

  Scenario: Calculate 4 factorial on our calculator
    Given I input "4" factorial
    Then I should see "24"

  Scenario Outline: Calculate factorial on our calculator
    Given I input "<input>" factorial
    Then I should see "<output>"

    Examples:
      | input | output |
      | -1    | None   |
      | 0     | 1      |
      | 1     | 1      |
      | 2     | 2      |
      | 3     | 6      |
      | 4     | 24     |
      | 5     | 120    |