Feature: Create and Edit Categories
    As a blog administrator
    In order to sort blog articles by categories
    I want to be able to create new categories and assign articles to them

    Background:
        Given the blog is set up
        And I am logged into the admin panel
        When I follow "Categories"

    Scenario: Hyper Link should not be broken
        Then I should see "Categories"
        And I should see "Permalink"
        And I should see "Description"

    Scenario: It should be possible to create new categories
        When I fill in "Name" with "CategoryA"
        And I press "Save"
        Then I should see "CategoryA"
        And I should see "no articles"

    Scenario: It should be possible to edit existing categories
        When I follow "General"
        Then I fill in "Description" with "test1, test2, test3"
        And I press "Save"
        Then I should see "test1"