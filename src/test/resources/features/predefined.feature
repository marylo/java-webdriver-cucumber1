
  @predefined
Feature: Smoke steps

  @predefined1
  Scenario: Predefined steps for Google
    Given I open url "https://google.com"
    Then I should see page title as "Google"
    Then element with xpath "//input[@name='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@name='q']"
    Then I click on element using JavaScript with xpath "(//input[@name='btnK'])[1]"
    Then I wait for element with xpath "//*[@id='res']" to be present
    Then element with xpath "//*[@id='res']" should contain text "Cucumber"

@predefined2
  Scenario: Predefined steps for Bing
    Given I open url "https://www.bing.com/"
    Then I should see page title as "Bing"
    Then element with xpath "//input[@id='sb_form_q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@id='sb_form_q']"
    And I click on element using JavaScript with xpath "//label[@class='search icon tooltip']"
    Then I wait for element with xpath "//input[@id='sb_form_q']" to be present
    Then element with xpath "//ol[@id='b_results']" should contain text "Cucumber"


@predefined3
  Scenario: Predefined steps for gibiru
    Given I open url "https://gibiru.com/"
    Then I should see page title as "Gibiru – Protecting your privacy since 2009"
    Then element with xpath "//input[@id='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@id='q']"
    And I click on element using JavaScript with xpath "(//i[@class='fas fa-search new'])[1]"
    Then I wait for element with xpath "//div[@class='gsc-results gsc-webResult']" to be present
    Then element with xpath "//div[@class='gsc-results gsc-webResult']" should contain text "Cucumber"


@predefined4
  Scenario: Predefined steps for duckduckgo
    Given I open url "https://duckduckgo.com"
    Then I should see page title as "DuckDuckGo — Privacy, simplified."
    Then element with xpath "//input[@id='search_form_input_homepage']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@id='search_form_input_homepage']"
    Then I click on element using JavaScript with xpath "(//input[@id='search_button_homepage'])[1]"
    Then I wait for element with xpath "//div[@class='results--main']" to be present
    Then element with xpath "//div[@class='results--main']" should contain text "Cucumber"


@predefined5
    Scenario: Predefined steps for swisscows.com
      Given I open url "https://swisscows.com"
      Then I should see page title as "Swisscows the alternative, data secure search engine."
      Then element with xpath "//input[@name='query']" should be present
      When I type "Behavior Driven Development" into element with xpath "//button[@class='search-submit']"
      Then I click on element using JavaScript with xpath "(//button[@class='search-submit'])[1]"
      Then I wait for element with xpath "//div[@class='web-results']" to be present
      Then element with xpath "//div[@class='web-results']" should contain text "Cucumber"

  @predefined6
  Scenario: Predefined steps for searchencrypt
    Given I open url "https://www.searchencrypt.com"
    Then I should see page title as "Search Encrypt | Home"
    Then element with xpath "//input[@placeholder='Search...']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@placeholder='Search...']"
    And I click on element using JavaScript with xpath "(//i[@class='fas fa-search'])[1]"
    Then I wait for element with xpath "//div[@class='serp__ia-container']" to be present
    Then element with xpath "//div[11]//div[1]" should contain text "Cucumber"

@predefined7
  Scenario: Predefined steps for startpage
    Given I open url "https://www.startpage.com"
    Then I should see page title as "Startpage.com - The world's most private search engine"
    Then element with xpath "//input[@id='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@id='q']"
    And I click on element using JavaScript with xpath "(//div[@class='ico-wrapper'])[1]"
    Then I wait for element with xpath "//div[@class='layout-web__body']" to be present
    Then element with xpath "//div[@class='layout-web__body']" should contain text "Cucumber"

  @predefined8
  Scenario: Responsive UI
    Given I open url "https://skryabin.com/market/quote.html"
    And I resize window to 1280 and 1024
    Then element with xpath "//b[@id='location']" should be displayed
    And I resize window to 1366 and 1024
    Then element with xpath "//b[@id='location']" should be displayed
    And I resize window to 320 and 568
    Then element with xpath "//b[@id='location']" should not be displayed

  @predefined9
  Scenario: Min length
    Given I open url "https://skryabin.com/market/quote.html"
    When I type "a" into element with xpath "//input[@name='username']"
    And I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//*[@id='username-error']" should be displayed
    And I clear element with xpath "//input[@name='username']"
    When I type "ab" into element with xpath "//input[@name='username']"
    Then element with xpath "//*[@id='username-error']" should not be displayed

  @predefined10
  Scenario: Email field behavior
    Given I open url "https://skryabin.com/market/quote.html"
    When I type "marygmail.com" into element with xpath "//input[@name='email']"
    And I click on element with xpath "//legend[@class='application']"
    Then element with xpath "//label[@id='email-error']" should be displayed
    And I clear element with xpath "//input[@name='email']"
    When I type "@gmail.com" into element with xpath "//input[@name='email']"
    And I click on element with xpath "//legend[@class='application']"
    Then element with xpath "//label[@id='email-error']" should be displayed
    And I clear element with xpath "//input[@name='email']"
    When I type "mary@gmail.com" into element with xpath "//input[@name='email']"
    And I click on element with xpath "//legend[@class='application']"
    Then element with xpath "//label[@id='email-error']" should not be displayed

  @predefined11
  Scenario: Validate Password set of fields
    Given I open url "https://skryabin.com/market/quote.html"
    When I clear element with xpath "//input[@id='password']"
    Then element with xpath "//input[@id='confirmPassword']" should be disabled
    Then I type "password1" into element with xpath "//input[@id='password']"
    And I type "password1" into element with xpath "//input[@id='confirmPassword']"
    Then element with xpath "//label[@id='confirmPassword-error']" should not be present
    



  @predefined12
  Scenario: Modal dialog Name field behavior
    Given I open url "https://skryabin.com/market/quote.html"
    Then I click on element with xpath "//input[@id='name']"
    Then element with xpath "//div[@id='nameDialog']" should be present
    Then I type "Anna" into element with xpath "//input[@id='firstName']"
    And I type "Maria" into element with xpath "//input[@id='middleName']"
    And I type "Ivanov" into element with xpath "//input[@id='lastName']"
    And I click on element with xpath "//span[contains(text(),'Save')]"
    Then element with xpath "//input[@value='Anna Maria Ivanov']" should be present




  @predefined13
  Scenario: Accepting Privacy Policy 
    Given I open url "https://skryabin.com/market/quote.html"
    When I click on element with xpath "//input[@name='phone']"
    Then element with xpath "//label[@id='agreedToPrivacyPolicy-error']" should be present
    Then I click on element using JavaScript with xpath "//input[@name='agreedToPrivacyPolicy'][1]"
    Then element with xpath "//label[contains(text(),'Must check')]" should not be present




  @predefined14
  Scenario: Enter non-required fields in the order
    Given I open url "https://skryabin.com/market/quote.html"
    Then I type "1234567890" into element with xpath "//input[@id='name']"
    Then I click on element with xpath "//select[@name='countryOfOrigin']"
    Then I click on element with xpath "//option[contains(text(),'France')]"
    Then I click on element with xpath "//*[@value='female']"
    Then I click on element with xpath "//input[@name='allowedToContact']"
    Then I type "52 RUE DES FLEURS 33500 LIBOURNE FRANCE" into element with xpath "//textarea[@id='address']"
    Then I click on element with xpath "//select[@name='carMake']"
    Then I click on element with xpath "//option[contains(text(),'BMW')]"
    Then I click on element with xpath "//button[@id='thirdPartyButton']"
    Then I accept alert
    Then I click on element with xpath "//input[@id='dateOfBirth']"
    When I click on element with xpath "//select[@class='ui-datepicker-month']/option[@value='1']"
    When I click on element with xpath "//select[@class='ui-datepicker-year']//option[@value='2000']"
    When I click on element with xpath "//a[contains(text(),'13')]"


  @predefined14
  Scenario: Submit the form and verify the data.
    Given I open url "https://skryabin.com/market/quote.html"
    Then I click on element with xpath "//input[@name='username']"
    And I type "marymary" into element with xpath "//input[@name='username']"
    Then I click on element with xpath "//input[@name='email']"
    And I type "marymary@gmail.com" into element with xpath "//input[@name='email']"
    Then I click on element with xpath "//input[@id='password']"
    And I type "password" into element with xpath "//input[@id='password']"
    Then I click on element with xpath "//input[@id='confirmPassword']"
    And I type "password" into element with xpath "//input[@id='confirmPassword']"
    And I click on element with xpath "//input[@id='name']"
    Then element with xpath "//div[@id='nameDialog']" should be present
    Then I type "Marina" into element with xpath "//input[@id='firstName']"
    And I type "Y" into element with xpath "//input[@id='middleName']"
    And I type "Lo" into element with xpath "//input[@id='lastName']"
    And I click on element with xpath "//span[contains(text(),'Save')]"
    Then element with xpath "//input[@value='Marina Y Lo']" should be present
    Then I click on element using JavaScript with xpath "//input[@name='agreedToPrivacyPolicy']"
    Then I click on element with xpath "//button[@id='formSubmit']"
    Then I wait for element with xpath "//div[@id='quotePageResult']" to be present
    Then element with xpath "//b[@name='email']" should contain text "mary@gmail.com"
    Then element with xpath "//b[@name='username']" should contain text "marymary"
    #Then element with xpath "//*[contains(text(),'Password')]" should contain text "entered"
    Then element with xpath "//b[@name='name']" should contain text "Marina Y Lo"
    Then element with xpath "//b[@name='agreedToPrivacyPolicy']" should contain text "true"
    Then element with xpath "//b[@name='currentDate']" should contain text "08/06/2020"
    Then element with xpath "//b[@name='currentTime']" should contain text "Pacific Daylight Time"
    And element with xpath "//b[@name='password']" should contain text "entered"



@exersize

Scenario: Greeting
    String firstName = "John";
    String lastName = "Dow";
    String favoriteColor = "green";
    String greeting = "Hi, my name is";
    String text = "my favorite color is";
    System.out.println(greeting + firstname + lastName + ", " + text + + favoriteColor);

