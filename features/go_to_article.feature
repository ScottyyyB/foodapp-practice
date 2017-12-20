Feature: Specific Article page
  As a visitor,
  when I visit the landing page,
  I would like to be able to visit a specific article page

  Background:
    Given the following articles exist
      | title  | content      |
      | Thomas | Right right  |

  Scenario: User visits article page
    Given I visit the 'Landing' page
    When I click 'Go to Article' on 'Thomas'
    Then I should be redirected to the 'Thomas' page
