Feature: As an user, I want to be able to apply for Apprenticeship, without re-entering my personal information

  Background:
    Given following users for each persona exist on system:
      | apprentice1  |
      | trainee1     |
      | employer1    |
      | trainingorg1 |

  Scenario: Apply for an apprenticeship
    Given I am logged in as "apprentice1" with password "Password1"
    And I fill in "school-name" with "A schoold"
    And I fill in "school-from" with "1991"
    And I fill in "school-to" with "1995"
    And I check "qualifications-yes"
    And I fill in "subject-name" with "Test Subject 1"
    And I fill in "subject-grade" with "A"
    And I follow "saveQualification"
    And I fill in "subject-name" with "Test Subject 2"
    And I fill in "subject-grade" with "B"
    And I follow "saveQualification"
    And I check "workexp-yes"
    And I fill in "work-employer" with "Employer 1"
    And I fill in "work-title" with "Job Titlte"
    And I fill in "work-role" with "Duties list"
    And I fill in "work-title" with "Job Title"
    And I fill in "work-from-year" with "1996"
    And I fill in "work-to-year" with "2014"
    And I follow "addWorkBtn"
    And I fill in "question1" with "strength1\nstrength2"
    And I fill in "question2" with "skill to improve1\nskill to improve2"
    And I fill in "question3" with "hobby1\ninterest1"
    And I fill in "question4" with "interview support suggestion1\ninterview support suggestion2"
    And I fill in "add-question1" with "I would like to become apprentice, because I do, alright?"
    And I fill in "add-question2" with "nowhere going somewhere fast"
    And I press "applyPreviewBtn"
    When I press "Submit application"
    Then I should see "Apprenticeship application submitted"