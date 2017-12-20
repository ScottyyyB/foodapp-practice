Feature: Comments to Articles
  As a visitor,
  when I visit a specific article page
  I would like to be able to make a comment

  Background:
    Given the following articles exist
      | title  | content       | email              |
      | Thomas | Right right   | cutie123@gmail.com |
    And I visit the "Landing" page
    And I click 'Go to Article' on 'Thomas'

  Scenario: Visitor adds comment to article [Happy Path]
    Given I fill in 'Body' with 'Dude seriously, this was an awesome read'
    When I click 'Create Comment'
    And I should see 'Dude seriously, this was an awesome read'

  Scenario: Visitor adds comment without body [Sad Path]
    Given I fill in 'Body' with ''
    When I click 'Create Comment'
    Then I should see 'Body can\'t be blank'
