@regression
Feature: Register functionality
  As a User,
  I should register successfully
  I should see error message while register with existing email
  I should Place Order: Register while Checkout
  I should Place Order: Register before Checkout
  I should Place Order: Login before Checkout
  I should verify address details in checkout page

#Test Case 1: Register User
  @author_MKT @sanity @smoke
  Scenario: User should register successfully
    Given I am on homepage and verify the homepage URL
    When  I click on header menu option "Signup / Login"
    Then  I should see the login page text "New User Signup!"
    And   I send name "John" and email "hello" to signup
    And   I click on button "Signup"
    Then  I should see text "ENTER ACCOUNT INFORMATION"
    And   I fill all details in signup page "Mrs" "John" "14" "January" "1980" "John" "Bondy" "Rugby Avenue" "Lalbaugh" "India" "Gujarat" "Ahemadabad" "395001" "09584258345"
    And   I click on news letter subscription check box
    And   I click on special offers check box
    And   I click on Create Account button
    Then  I see account created message "ACCOUNT CREATED!"
    And   I click on continue button
    Then  I should see the text "Logged in as " "John"
    And   I click on header menu option "Delete Account"
    Then  I should see the account deleted message "ACCOUNT DELETED!"
    And   I click on continue button after deleting account

#Testcase 5: Register User with existing email
  @author_MKT @smoke
  Scenario: User should see error message while register with existing email
    Given  I am on homepage and verify the homepage URL
    When   I click on header menu option "Signup / Login"
    Then   I should see the login page text "New User Signup!"
    And    I send name "John" to name field in signup
    And    I send email "hello1@gmail.com" to email field in signup
    And    I click on button "Signup"
    Then   I should see error message "Email Address already exist!"

#Test Case 14: Place Order: Register while Checkout
  @author_MKT
  Scenario: User should Place Order: Register while Checkout
    Given I am on homepage and verify the homepage URL
    When  I add product "Blue Top" to the cart
    And   I click on view cart in popup
    And   I should see the welcome text on shopping cart page "Shopping Cart"
    And   I click on Proceed to Checkout button
    And   I click on register link in the checkout popup
    And   I send name "John" and email "hello" to signup
    And   I click on button "Signup"
    And   I fill all details in signup page "Mrs" "John4697" "14" "January" "1980" "JOhn" "Bondy" "C" "Lalbaugh" "India" "Gujarat" "Ahmedabad" "395001" "09584258345"
    And   I click on Create Account button
    Then  I see account created message "ACCOUNT CREATED!"
    And   I click on continue button
    Then  I should see the text "Logged in as " "John"
    And   I click on header menu option "Cart"
    And   I click on Proceed to Checkout button
    And   I should see the text on checkout page "Review Your Order"
    And   I should see the text on checkout page "Address Details"
    And   I enter details into comment area "Please deliver it on time."
    And   I click on place order button
    And   I enter payment details "Hello123" "4263982640269299" "837" "02" and "2028"
    And   I click on Pay and Confirm Order button
    Then  I should see the order confirmation message "Congratulations! Your order has been confirmed!"
    And   I click on header menu option "Delete Account"
    Then  I should see the account deleted message "ACCOUNT DELETED!"
    Then  I click on continue button after deleting account

#Test Case 15: Place Order: Register before Checkout
  @author_MKT
  Scenario: User should Place Order: Register before Checkout
    Given I am on homepage and verify the homepage URL
    When I click on header menu option "Signup / Login"
    And   I send name "John" and email "hello" to signup
    And I click on button "Signup"
    And   I fill all details in signup page "Mrs" "John4697" "14" "January" "1980" "JOhn" "Bondy" "Rugby Avenue" "Lalbaugh" "India" "Gujarat" "Ahmedabad" "395001" "09584258345"
    And I click on Create Account button
    Then I see account created message "ACCOUNT CREATED!"
    And I click on continue button
    Then I should see the text "Logged in as " "John"
    And I add product "Blue Top" to the cart
    And I click on view cart in popup
    And I should see the welcome text on shopping cart page "Shopping Cart"
    And I click on Proceed to Checkout button
    And I should see the text on checkout page "Review Your Order"
    And I should see the text on checkout page "Address Details"
    And I enter details into comment area "Please deliver it on time."
    And I click on place order button
    And I enter payment details "Hello123" "4263982640269299" "837" "02" and "2028"
    And I click on Pay and Confirm Order button
    Then I should see the order confirmation message "Congratulations! Your order has been confirmed!"
    And I click on header menu option "Delete Account"
    Then I should see the account deleted message "ACCOUNT DELETED!"
    Then I click on continue button after deleting account

  #Test Case 16: Place Order: Login before Checkout
  @author_MKT
  Scenario: User should place the order successfully : Login before Checkout
    Given I am on homepage and verify the homepage URL
    When  I click on header menu option "Signup / Login"
    Then  I should see the login page text "Login to your account"
    And   I enter "john4697@gmail.com" email and "john4697" password for login
    And   I click on button "Login"
    Then  I should see the text "Logged in as " "John"
    And   I add product "Blue Top" to the cart
    And   I click on view cart in popup
    And   I should see the welcome text on shopping cart page "Shopping Cart"
    And   I click on Proceed to Checkout button
    And   I should see the text on checkout page "Review Your Order"
    And   I should see the text on checkout page "Address Details"
    And   I enter details into comment area "Please deliver it on time."
    And   I click on place order button
    And   I enter payment details "Hello123" "4263982640269299" "837" "02" and "2028"
    And   I click on Pay and Confirm Order button
    Then  I should see the order confirmation message "Congratulations! Your order has been confirmed!"
    And   I click on header menu option "Logout"

#Test Case 23: Verify address details in checkout page
  @author_MKT
  Scenario: Verify address details in checkout page
    Given I am on homepage and verify the homepage URL
    When  I click on header menu option "Signup / Login"
    And   I send name "John" and email "hello" to signup
    And   I click on button "Signup"
    And   I fill all details in signup page "Mrs" "John4697" "14" "January" "1980" "JOhn" "Bondy" "Dev Bunglows" "Lalbaugh" "India" "Gujarat" "Ahmedabad" "395001" "09584258345"
    And   I click on Create Account button
    Then  I see account created message "ACCOUNT CREATED!"
    And   I click on continue button
    Then  I should see the text "Logged in as " "John"
    And   I add product "Blue Top" to the cart
    And   I click on view cart in popup
    And   I should see the welcome text on shopping cart page "Shopping Cart"
    And   I click on Proceed to Checkout button
    Then  I should see the delivery address is same address filled at the time registration of account "Dev Bunglows"
    And   I click on header menu option "Delete Account"
    Then  I should see the account deleted message "ACCOUNT DELETED!"
    And   I click on continue button after deleting account


