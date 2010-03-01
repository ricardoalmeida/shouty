Feature: List Shouties

  Scenario: Home page
    Given the following shouties exist
      | body | user_id |
      |  hi  |    1    |
      |  my  |    1    |
      | name |    1    |
      |  is  |    1    |
    When I am logged with "fulano"
    Then I should see shouties table
      |  is  |
      | name |
      |  my  |
      |  hi  |

  Scenario: logged out
	Given I am logged out
	When I go to the home page
	Then I should see "create your account"