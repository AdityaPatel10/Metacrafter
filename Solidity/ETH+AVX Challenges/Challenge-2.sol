// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract Contract_1 {
    address public admin;
    uint public blnc = 100;
    uint x = 9;

    constructor() {
        admin == msg.sender;
    }

    modifier AdminOnly {
        require(admin == msg.sender, "Only Admin can Access It");
        _;
    }

    function setAdmin(address _admin) public {
        admin = _admin;
    }


    function getAdmin() public view AdminOnly returns (address) {
        return admin;
    }

    function Addition(uint a, uint b) public pure returns (uint) {
        return a+b;
    }

    function deposit() public payable {
        blnc += msg.value;
    }

    function Withdraw(uint amount) public payable virtual  {
        require(msg.sender == admin, "Only the owner can withdraw");
        payable(msg.sender).transfer(amount);
        blnc -= amount;
    }
}

contract Contract_2 is Contract_1 {
    function Withdraw(uint amount) public payable override {
        require(msg.sender == admin, "Only the owner can withdraw");
        require(amount > blnc, "Insufficient Balance");
        require(amount <= 0, "Amount should be greater than 0");
        payable(msg.sender).transfer(amount);
        blnc -= amount;
    }
}