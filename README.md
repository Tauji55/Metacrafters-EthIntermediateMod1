# Project1_ErrorHandling_Eth_Intermediadiate

Usage of three basic types of error handling statements: Require(), Revert() and Assert().
This project covers the Assessment 1 of Module 1 in the Eth+Avax Intermediate Course under Metacrafters.

## Description

The code deploys a contract named AirTrafficControl which uses revert(), require() and assert() statements withing functions to perform some basic operations required by the ATC like:
* Establishing connection with the pilots:
  **function contactPilots(bool connection) where the arguments "false" implies connection not established and "true" implies connection successfully established respectively.
  **In case the argument reads "false", the contract is REVERTED to the previous state. 
* Checking weather condition for take off:
  **function clearWeather(uint _windSpeed) where the argument is REQUIRE to be less than 35 knots,
  **if the REQUIRE condition evaluates to "false" with the argument value >=35 knots then an error occurs and a message showing the unsuitablibility of the weather condition for a takeoff is displayed. 
* Assigning a runway to a flight:
  **function assignRunway(uint _checkRunway) where we ASSERT that the argument is always greater than 0 and less than 9.
  **a runway is a countable (natural) number so it should never be 0
  **the available number of total runways we have is 9 validated by an array declared in the beginning of the contract "uint[] runwayStatus=[0,0,1,0,1,1,0,0,1]".
  **Each index of the array is a runway, Therefore, we keep the userinput runway to check (uint _checkRunway) in sync with the index by adding 1 to the input.  

### Executing program

To run the program:
* First copy the code in the Project1Assessment.sol file of this repository (Direct link: https://github.com/Tauji55/Metacrafters-EthIntermediateMod1/blob/main/Project1Assessment.sol)
* Then go to a solidity compiler to deploy the contract (Preferred compiler : Remix IDE (https://remix.ethereum.org))
* Ones in the compiler create a file with .sol extention under the contracts folder as or a folder (existing or new) of your choice.
* Paste the copied code into the file
* Switch to the Compiler tab and either check the auto compile option in the checkbox or click on the compile filename.sol button.
* Switch to the Deploy and Run Transactions tab and click on Deploy button.
* Slide down the menu and click on the dropdown over the various functions and enter the respective arguments and click on run to see the results.

## Help

Solution to common problems or issues:
* The compiler version in the code might not match the compiler version on your solidity compiler tab. This happens generally depending on the compatibility your device or browser.
```
//check the Compiler tab to see if it matches the version in this line of code:

pragma solidity ^0.8.26;

//if the version does not match copy the version given in the compiler tab and paste it after the ^ in this line of code.
//for example if it says 0.8.24+commit.e11b9ed9 then copy till the 0.8.24 part and paste in the code like this:

pragma solidity ^0.8.24;

```
* A Licence should be declared within the file
```
//for example make sure to put the following line of code on the topmost line of your code file (comment it out as given below):

// SPDX-License-Identifier: MIT

```

## Authors

IceTastesNice~Metacrafters

## License

This project is licensed under the [MIT] License - see the LICENSE.md file for details
