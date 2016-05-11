@safaribooking
Feature: Safari book reading time

  As a Safari user
  I learn how many times the book will take to watch
  So that I can arrange my time

  @scenario_1
  Scenario: Learning time

    Given I am at Safari book page
    When I research : "Learning Data Structures and Algorithms"
    And I am logged in with username: "username" password: "password"
    When  I can see and calculate total time of book



