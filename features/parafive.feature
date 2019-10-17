# Created by nik at 2019-09-30
Feature: Parallel five test testing.
  So that Customers can get the benefit of running stuff in parallel.
  Lets create some tests that do "stuff" in parallel and pass/fail/random

  Scenario: Simple five parallel test
    When I have a simple test
    Then my test "passes"

  Scenario: Second five parallel test
    When I have a simple test
    Then my test "fails"


  Scenario Outline: Third five parallel set of tests
    When I have a simple test
    Then my test "<ps>"
    Examples:
    |  ps    |
    | passes |
    | fails  |
    | other  |