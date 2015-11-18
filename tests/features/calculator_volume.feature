Feature: Acceptance Test for the
  volume() function of Calculator

  Background:
    Given I am using the calculator

  Scenario: Calculate volume of solid 2 x 3 x 4
    Given I input volume of "2" by "3" by "4"
    Then I should see "24"

  Scenario Outline: Volume of 3 solid given 3 dimensions
    Given I input volume of "<input1>" by "<input2>" by "<input3>"
    Then I should see "<output>"

  Examples:
    | input1 | input2 | input3 | output |
    | 1      | 1      | 1      | 1      |
    | 2      | 1      | 1      | 2      |
    | 1      | 2      | 1      | 2      |
    | 1      | 1      | 2      | 2      |
    | 2      | 3      | 4      | 24     |
    | 10     | 10     | 10     | 1000   |