Feature: Displays articles
  As a visitor,
  when I visit the landing page,
  I would like to see a list of articles displayed

  Background:
    Given the following articles exist
      | title            | content                 |
      | Gandalf's tales  | You shall not pass      |
      | Elf is twelve    | Will Farrel is the best |

  Scenario: User visits landing page
    Given I visit the "Landing" page
    Then I should see "Gandalf's tales"
    And I should see "Elf is twelve"
    And show me the page
