@javascript @core
Feature: Registration procedure
In order to check that a person can register
As an admin
So people can have access to their Mahara

 Scenario: Registering as a new student and checking switch can flick back and forth (Bug 1431569)
 Given I log in as "admin" with password "Kupuhipa1"
 And the following "institutions" exist:
 | name | displayname | registerallowed | registerconfirm |
 | instone | Institution One | ON | ON |
 And I log out
 And I follow "Register"
 And I fill in the following:
 | First name | Lightening |
 | Last name | McQueen |
 | Email address | fakeymcfakey@example.org |
 | Registration reason | I will absolutely make this institution more amazing!! |
 # we wait a human amount of time so the spam trap is avoided
 And I wait "4" seconds
 And I press "Register"
 And I follow "Login"
 And I log in as "admin" with password "Kupuhipa1"
 And I choose "Pending registrations" in "Institutions" from administration menu
 And I follow "Approve"
 And I press "Approve"
