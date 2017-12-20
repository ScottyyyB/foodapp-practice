Feature: Visitor adds email to their article
  As a visitor,
  when I'm about to create an article,
  I would like to be able to add my email

  Background:
    Given I visit the 'Landing' page
    And I click 'New Article'

  Scenario: User adds valid email to their article [Happy Path]
    Given I fill in 'Title' with 'Thomas'
    And I fill in 'Content' with 'Right right'
    And I fill in 'Email' with 'thomas@hotmail.com'
    When I click 'Create Article'
    Then show me the page
    Then I should see 'Written By: thomas@hotmail.com'
