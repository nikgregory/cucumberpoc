# Created by nik at 2019-09-30
Feature: Parallel three test testing.
  So that Customers can get the benefit of running stuff in parallel.
  Lets create some tests that do "stuff" in parallel and pass/fail/random

  Scenario: Simple three parallel test
    When I have a simple test
    Then my test "passes"

  Scenario: Second three parallel test
    When I have a simple test
    Then my test "fails"


  Scenario Outline: Third three parallel set of tests
    When I have a simple test
    Then my test "<ps>"
    Examples:
    |  ps    |
    | passes |
    | fails  |
    | other  |