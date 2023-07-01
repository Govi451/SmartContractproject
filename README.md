# SmartContractproject

The `DivideByZero` smart contract provides functions to perform division operations with error handling for the divide by zero exception. It demonstrates the usage of `require()`, `assert()`, and `revert()` statements in Solidity.

## Description
This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. The contract has a three functions which we are used for performing the require(),revert() and assert() function to handles the error in solidity

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., Dividebyzero.sol). Copy and paste the following code into the file:

```javascript
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DivideByZero {
    function divide(uint256 numerator, uint256 denominator) public pure returns (uint256) {
        require(denominator != 0, "Division by zero is not allowed");
        return numerator / denominator;
    }
    
    function divideWithAssert(uint256 numerator, uint256 denominator) public pure returns (uint256) {
        assert(denominator != 0);
        return numerator / denominator;
    }
    
    function divideWithRevert(uint256 numerator, uint256 denominator) public pure returns (uint256) {
        if (denominator == 0) {
            revert("Division by zero is not allowed");
        }
        return numerator / denominator;
    }
}

```

## Requirements

- Solidity version: 0.8.0 or higher

## Functions

### `divide(uint256 numerator, uint256 denominator)`

This function performs a division operation between the two numbers provided as arguments. It uses the `require()` statement to check if the `denominator` is not zero before performing. If the condition fails, it terminated with message "Division by zero is not allowed." Otherwise, it returns the division result.

### `divideWithAssert(uint256 numerator, uint256 denominator)`

This function performs a division operation between the two numbers provided as arguments. However, it uses the `assert()` statement to check if the `denominator` is not zero. If the condition fails, it triggers  and reverts the transaction with no specific error message. Otherwise, it returns the division result.

### `divideWithRevert(uint256 numerator, uint256 denominator)`

Similar to the previous functions, this function performs division but handles the divide by zero exception manually. It checks if the `denominator` is zero using an `if` statement. If the condition is met, it uses the `revert()` statement to revert the transaction with the error message "Division by zero is not allowed." Otherwise, it returns the division result.

## Usage

1. Compile the smart contract using a Solidity compiler of version 0.8.0 or higher.
2. Deploy the compiled contract on a compatible Ethereum network.
3. Call the desired function (divide, divideWithAssert, or divideWithRevert) to perform the division operation.
4. Handle the exceptions as necessary based on the function used:
   - For `divide`, catch the `require` exception with the error message "Division by zero is not allowed."
   - For `divideWithAssert`, handle the assertion failure without a specific error message.
   - For `divideWithRevert`, catch the `revert` exception with the error message "Division by zero is not allowed."

## Authors
Govind Pandey
## License

This smart contract is licensed under the MIT License.
