// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;
contract Greatest {
    uint a;
    uint b;
    uint c;
    uint d;
    address owner;

    constructor() {
        owner = msg.sender;
    }
    
    modifier OwnersOnly{
        require(owner == msg.sender , "Only Owner have the Access");
        _;
    }

    function set(uint _a, uint _b, uint _c, uint _d) public OwnersOnly {
        a = _a;
        b = _b;
        c = _c;
        d = _d;
    }

    function Comparision() public view OwnersOnly returns (uint) {
        if((a>b) && (a>c) && (a>d)){
            return a;
        }
        else if((b>a) && (b>c) && (b>d)){
            return b;
        }
        else if((c>a) && (c>b) && (c>d)){
            return c;
        }
        else{
            return d;
        }
    }
}
