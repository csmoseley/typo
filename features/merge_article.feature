Feature: Create Blog
  As an admin of a blog
  In order to combine content 
  I want to merge a blog

  Scenario: Merge Articles as Admin
    Given the blog is set up
		Given I am on the new article page
    When I fill in "article_title" with "Foobar"
    And I fill in "article__body_and_extended_editor" with "Lorem Ipsum"
    And I press "Publish"
		And I am logged into the admin panel
		When I am on the edit page
    And I should see "Merge Articles"
		And I should see "merge_with"
		And I fill in "2" for "merge_with"
		Then I press "Merge"
		When I am on the first article page


  Scenario: A non-admin cannot merge two articles
    Given the blog is set up
    When I am on the edit page
    Then I should not see "Merge Articles"
