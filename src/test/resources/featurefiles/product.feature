@regression
Feature: As a user,
  I should verify all products and product detail page
  I should search product
  I should add products in cart
  I should verify product quantity in cart
  I should view category products
  I should view and cart brand products
  I should search product and verify cart after login
  I should add review on product
  I should add to cart from recommended items

#Test Case 8: Verify All Products and product detail page
  @author_MKT @sanity @smoke
  Scenario: User should verify all products and product detail page
    Given I am on homepage and verify the homepage URL
    When  I click on products tab
    Then  I should see text "ALL PRODUCTS" on product page
    And   I click on view product of first product "Blue Top"
    And   I am on product details page and verify the URL
    And   I should see product name "Blue Top"
    And   I should see category "Category: Women > Tops"
    And   I should see price "Rs. 500"
    And   I should see availability "Availability: In Stock"
    And   I should see condition "Condition: New"
    And   I should see brand "Brand: Polo"

#Test Case 9: Search Product
  @author_MKT @smoke
  Scenario: User should search product
    Given I am on homepage and verify the homepage URL
    When  I click on products tab
    Then  I should see text "ALL PRODUCTS" on product page
    And   I enter product name "Men Tshirt" in search bar
    And   I click on search button
    Then  I should see the text "SEARCHED PRODUCTS" on the page
    And   I should see the searched product "Men Tshirt"

#Test Case 12: Add Products in Cart
  @author_MKT
  Scenario: User should add products in cart
    Given I am on homepage and verify the homepage URL
    When  I click on products tab
    Then  I add product "Men Tshirt" to the cart
    And   I click on continue shopping link
    And   I add product "Blue Top" to the cart
    And   I click on view cart in popup
    Then  I verify the product "Blue Top" in shopping cart
    Then  I verify the product "Men Tshirt" in shopping cart

#Test Case 13: Verify Product quantity in Cart
  @author_MKT
  Scenario: User should verify product quantity in cart
    Given I am on homepage and verify the homepage URL
    When  I click on view product of first product "Blue Top"
    And   I am on product details page and verify the URL
    And   I should see product name "Blue Top"
    And   I should see category "Category: Women > Tops"
    And   I should see price "Rs. 500"
    And   I should see availability "Availability: In Stock"
    And   I should see condition "Condition: New"
    And   I should see brand "Brand: Polo"
    And   I increase the quantity "4"
    And   I click on add to cart button
    And   I click on view cart link in success message
    Then  I should see quantity "4"

#Test Case 18: View Category Products
   @author_MKT
  Scenario: User should view category products
    Given I am on homepage and verify the homepage URL
    When  I click on products tab
    Then  I click on "Women" category
    And   I click on "Dress" in women category
    And   I should see "WOMEN - DRESS PRODUCTS" page title
    Then  I click on "Men" category
    And   I click on "Tshirts" in men category
    And   I should see "MEN - TSHIRTS PRODUCTS" page title

#Test Case 19: View & Cart Brand Products
  @author_MKT
  Scenario: User should view and cart brand products
    Given I am on homepage and verify the homepage URL
    When  I click on products tab
    Then  I click on "Polo" brand in Brands tab
    And   I should see "BRAND - POLO PRODUCTS" page title
    And   I click on "Madame" brand in Brands tab
    And   I should see "BRAND - MADAME PRODUCTS" page title

#Test Case 20: Search Products and Verify Cart After Login
  @author_MKT
Scenario:  User should search product and verify cart after login
    Given I am on homepage and verify the homepage URL
    When  I click on products tab
    Then  I should see text "ALL PRODUCTS" on product page
    And   I enter product name "Men Tshirt" in search bar
    And   I click on search button
    Then  I should see the text "SEARCHED PRODUCTS" on the page
    And   I should see the searched product "Men Tshirt"
    And   I add product "Men Tshirt" to the cart
    And   I click on view cart in popup
    Then  I verify the product "Men Tshirt" in shopping cart
    And   I click on header menu option "Signup / Login"
    Then  I should see the login page text "Login to your account"
    And   I enter "john123@gmail.com" email and "john4697" password for login
    And   I click on button "Login"
    And   I click on header menu option "Cart"
    Then  I verify the product "Men Tshirt" in shopping cart

#Test Case 21: Add review on product
@author_MKT
Scenario: User should add review on product
  Given I am on homepage and verify the homepage URL
  When  I click on products tab
  Then  I should see text "ALL PRODUCTS" on product page
  And   I click on view product of first product "Blue Top"
  And   I enter "john" name at your name field
  And   I enter "hello1@gmail.com" email at email address field
  And   I enter "This is a nice product." message to review here field
  And   I click on review submit button
  Then  I should see "Thank you for your review." message

#Test Case 22: Add to cart from Recommended items
@author_MKT
Scenario: User should add to cart from recommended items
  Given I am on homepage and verify the homepage URL
  When  I scroll down up to recommended items text
  Then  I should see "RECOMMENDED ITEMS" text
  And   I add to cart "Stylish Dress" product from recommended items
  And   I click on view cart in popup
  Then  I verify the product "Stylish Dress" in shopping cart


