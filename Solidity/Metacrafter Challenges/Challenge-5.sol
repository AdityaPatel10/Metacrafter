// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
contract Functions {

    //Function to Add Two Numbers
    function Sum(uint x, uint y) external pure returns (uint) {
        return x+y;
    }

    //Function to Subtract Two Numbers
    function Subtract(uint x, uint y) external pure returns (uint) {
        return x-y;
    }

    //Function to Multipky Two Numbers
    function Multiply(uint x, uint y) external pure returns (uint) {
        return x*y;
    }

    //Function to Divide Two Numbers
    function Divide(uint x, uint y) external pure returns (uint) {
        return x/y;
    }
}