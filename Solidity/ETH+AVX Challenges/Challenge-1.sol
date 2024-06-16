// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract SmartContract {
    string name;
    uint uid;
    address admin;

    constructor() {
    admin = msg.sender;
    }

    modifier AdminOnly{
        require(admin == msg.sender, "Access To Authenticate Students Only");
        _;
    }

    function setName(string memory _name) public AdminOnly {
        name = _name;
    }

    function setUid(uint _uid) public AdminOnly {
        uid = _uid;
    }

    function getName() public view AdminOnly returns(string memory){
        return name;
    }    

    function getUid() public view AdminOnly returns(uint){
        return uid;
    }
}