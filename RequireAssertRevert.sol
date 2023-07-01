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
