Currency Exchange Rate Service Testing with Karate BDD


Overview
This project aims to demonstrate the testing of an open-source currency exchange rate service using Karate BDD (Behavior-Driven Development).
The currency exchange rate service provides real-time exchange rates for various currencies.

Features
Automated Testing: Utilizes Karate BDD to automate the testing process.
Scenario Coverage: Tests various scenarios to ensure the reliability and accuracy of the exchange rate service.
Easy to Understand: Tests are written in a behavior-driven style, making them easy to read and understand.

Prerequisites
Before running the tests, ensure you have the following installed:

Java Development Kit (JDK) - version 17 or above
Gradle
IDE (Intellij)

Setup:
1) Clone the repository to your local machine:
git clone https://github.com/aiazm496/KarateApiTesting.git

Navigate to the project directory:

Build the project using Gradle:

Running Tests
Run the test using TestRunner class.

The test structure follows the standard Karate BDD directory structure:


├── src
│   └── test
│   |    |── java
|   |         |___TestRunner.java    (Test runner class using Junit test framework)
|   └── resources
│   |        └── features            
│   |            └── ExchangeRateApiTest.feature ( Karate feature file)
|   |__ karate-config.js ( contains environment and suit global variables)
   

Contributing
Contributions are welcome! If you'd like to contribute to this project, feel free to submit a pull request.

License
This project is licensed under the MIT License - see the LICENSE file for details.

Acknowledgments
Karate - The open-source testing framework used in this project.
Open Exchange Rates - The open-source currency exchange rate service used for testing.
Feel free to customize this template to better suit your project's specifics. Happy testing!
