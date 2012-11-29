Feature: Write Articles
  As a blog administrator
  In order to include categories in my blog
  I want to be able to manage them correctly

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: I see the categories page
    Given I am on the categories page
    Then I should see "Categories"

  Scenario: I can create a new category
    Given I am on the categories page
    And I fill in "Name" with "fruits"
    And I fill in "Keywords" with "healthy"
    And I fill in "Description" with "Some description here"
    And I press "Save"
    Then I should see "Category was successfully saved"
    Then I should see "fruits"

  Scenario: I can edit an existing category
    Given the following categories exist:
    | name | keywords       | permalink | description    |
    | pets | flurry, lovely |           | some pets here |
    And I am on the categories page
    Then I should see "pets"
    When I follow "pets"
