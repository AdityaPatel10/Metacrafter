// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;
contract  Mapping {
    mapping (address => uint) public balances; //Normal mapping
    mapping (address => mapping (address => bool)) public isFriend; // Nested mapping

    uint bal;
    uint bal2;
    function examples() external {
        balances[msg.sender] = 123;
        bal = balances[msg.sender];
        bal2 = balances[address(1)]; // 0

        balances[msg.sender] += 456; //123 + 456 = 579

        delete balances[msg.sender]; // 0

        isFriend[msg.sender][address(this)] = true;
        

    }
}