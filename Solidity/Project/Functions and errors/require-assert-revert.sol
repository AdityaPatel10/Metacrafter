// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ProjectContract {
    address public owner;
    uint256 public value;

    // Constructor to set the owner
    constructor() {
        owner = msg.sender; // Set the contract deployer as the owner
    }

    // Function to set a value greater than 100
    function setValue(uint256 _value) public {
        // Using require to validate input
        require(_value > 100, "Value must be greater than 100");
        value = _value;
    }

    // Function to check if the caller is the owner
    function onlyOwner() public view returns (string memory) {
        // Using revert to prevent unauthorized access
        if (msg.sender != owner) {
            revert("Caller is not the owner");
        }
        return "You are the owner";
    }

    // Function using assert to ensure state correctness
    function checkValue() public view {
        // This should always be true if the contract logic is correct
        assert(value > 100);
    }

    // Function to reset value by the owner only
    function resetValue() public {
        require(msg.sender == owner, "Only the owner can reset the value");
        value = 0;
    }
}
