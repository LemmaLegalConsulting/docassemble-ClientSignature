@authentication_guard
Feature: ClientSignature authentication boundary

  Scenario: An anonymous visitor receives the real sign-in ending
    Given I start the interview at "fill_generic_template.yml"
    Then the question id should be "sign in required"
    And I should see the phrase "You need to sign-in to use this interview."
