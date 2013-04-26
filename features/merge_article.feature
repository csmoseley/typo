Feature: Create Blog
  As an admin of a blog
  In order to combine content 
  I want to merge a blog

  Scenario: Merge Articles as Admin
    Given the blog is set up
		And I am logged into the admin panel
		When I am on the edit page
    And I should see "Merge Articles"

  Scenario: A non-admin cannot merge two articles
    Given the blog is set up
    When I am on the edit page
    Then I should not see "Merge Articles"
