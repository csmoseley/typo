Feature: Create Blog
  As an admin of a blog
  In order to combine content 
  I want to merge a blog

  Scenario: Merge Articles as Admin
    Given the blog is set up
		And I am logged into the admin panel
		Given I am on the new article page
    When I fill in "article_title" with "Foobar"
    And I fill in "article__body_and_extended_editor" with "Lorem Ipsum"
    And I press "Publish"
		When I am on the edit page
    And I should see "Merge Articles"
		And I fill in "2" for "merge_with"
		Then I press "Merge"
		When I go to the home page
		And I follow "Hello World!"
		Then I should see "Welcome to Typo. This is your first article. Edit or delete it, then start blogging!"
		And I should see "Lorem Ipsum"
		
		


  Scenario: A non-admin cannot merge two articles
    Given the blog is set up
    When I am on the edit page
    Then I should not see "Merge Articles"
