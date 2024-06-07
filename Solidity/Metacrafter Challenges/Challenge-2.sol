// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract SmartContract {
    uint256 public amount;

    // Funtion to save the value of amount
    function setAmount(uint _amount) public {
        amount = _amount;
    }

    // Function to get the amount in Wei
    function getAmountInWei() public view returns (uint256) {
        return amount;
    }

    // Function to get the amount in Gwei
    function getAmountInGwei() public view returns (uint256) {
        return amount / 1 gwei;
    }

    // Function to get the amount in Ether
    function getAmountInEther() public view returns (uint256) {
        return amount / 1 ether;
    }
}