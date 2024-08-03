// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;
contract Structs {
    struct Bike {
        string model;
        uint year;
        address owner;
    }
    Bike public bike;
    Bike[] public bikes;
    mapping(address => Bike[]) public bikeByOwner;
    
    uint public len;

    function examples() external {
        Bike memory yamaha = Bike("MT15", 1989, msg.sender);
        Bike memory hero = Bike({year: 1969, model:"Splender", owner: msg.sender});
        Bike memory honda;
        honda.model = "CB-Shine";
        honda.year = 1990;
        honda.owner = msg.sender;

        bikes.push(yamaha);
        bikes.push(hero);
        bikes.push(honda);

        bikes.push(Bike("Access-125", 2024, msg.sender));

        // Memory can't update the data
        // Storage permanently update the data

        Bike storage _bike = bikes[0];
        _bike.year = 2000;
        delete _bike.owner;
        
        delete bikes[1];
        len = bikes.length;
    }
}