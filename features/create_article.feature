Feature: Create Articles
  As a visitor,
  In order to share my love for writing,
  I would like to be able to create an article

  Background:
  Given the following articles exist
    | title            | content                 |
    | Thomas           | Right right             |
    And I visit the "Landing" page

  Scenario: User can create article [Happy Path]
    Given I click 'New Article'
    Then I should be on the 'New Article' page
    When I fill in 'Title' with 'LMFAO'
    And I fill in 'Content' with 'OG band baby'
    And I click 'Create Article'
    Then I should be redirected to the 'LMFAO' page

  Scenario: User attempts to create article without title [Sad Path]
    Given I click 'New Article'
    When I fill in 'Content' with 'Yeah baby!'
    And I click 'Create Article'
    Then I should see 'Title can\'t be blank'

  Scenario: User attempts to create article without content [Sad Path]
    Given I click 'New Article'
    When I fill in 'Title' with 'Gandalf Rules'
    And I click 'Create Article'
    Then I should see 'Content can\'t be blank'

  Scenario: User attempts to create article without content and title [Sad Path]
    Given I click 'New Article'
    And I click 'Create Article'
    Then I should see 'Title can\'t be blank'
    And I should see 'Content can\'t be blank'
