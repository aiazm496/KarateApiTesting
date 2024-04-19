#Author: Akash Agrawal
#email: akashagrawal.work@gmail.com

Feature: Validate Exchange Rate API for currency conversion
  Api used to fetch exchange rate: https://open.er-api.com/v6/latest/{baseCurrency}

  Scenario Outline: Validate API Response when User tries to fetch exchange rates for different Base Currencies
    * def baseCurrency = '<baseCurrency>'
    Given url baseUrl
    And path baseCurrency
    When method GET
    Then status 200
    And match response == exchangeRateApiSchema
    And assert response.base_code == '<baseCurrency>'
    And def rateCount = karate.sizeOf(response.rates)
    And assert rateCount == 162
    Examples:
      | baseCurrency |
      | USD          |
      | EUR          |
      | GBP          |
      | INR          |

  Scenario: Verify range of exchange Rate for currency AED wrt base currency USD
    * def baseCurrency = 'USD'
    Given url baseUrl
    And path baseCurrency
    When method GET
    Then status 200
    And def aedExchangeRate =  response.rates.AED
    And assert aedExchangeRate >=3.6 && aedExchangeRate <=3.7

  Scenario: Verify API response when user tries to find exchange rates with invalid Base Currency XYZ
    * def baseCurrency = 'XYZ'
    Given url baseUrl
    And path baseCurrency
    When method GET
    Then status 200
    And match response == {"result": "error","error-type": "unsupported-code"}

  Scenario: Verify API response when user didn't pass the Base Currency in the request URL
    Given url baseUrl + '/'
    When method GET
    Then status 404

  Scenario: Verify API response when user sends a POST HTTP request to fetch exchange Rates for Base Currency USD
    * def baseCurrency = 'USD'
    Given url baseUrl
    And path baseCurrency
    When method POST
    Then status 405
    And match response == {"result": "error","error-type": "wrong-http-method","extra-info": "Only GET requests are supported."}



