Feature: Create Articles
  As a visitor,
  In order to share my love for writing,
  I would like to be able to create an article

  Background:
  Given the following articles exist
    | title            | content                 |
    | Thomas           | Right right             |
    | Elf is twelve    | Will Farrel is the best |
    And I visit the "Landing" page

  Scenario: User can create article [Happy Path]
    Given I click 'New Article'
    Then I should be on the 'New Article' page
    When I fill in 'Title' with 'LMFAO'
    And I fill in 'Content' with 'OG band baby'
    And I click "Create Article"
    Then I should be redirected to the 'LMFAO' page

  Scenario: User attemps to create article with no title [Sad Path]
    Given I click 'Go to Article' on 'Thomas'
    Then I should be redirected to the 'Thomas' page
