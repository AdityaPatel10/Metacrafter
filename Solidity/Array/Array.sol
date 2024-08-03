// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;
contract Array{
    uint[] public nums = [1, 2, 3]; //Dynamic array
    uint[3] public numfixed = [4, 5, 6];
    uint public x;
    uint public len;
    function example() external {
        nums.push(4); // [1, 2, 3, 4]
        x = nums[1];
        nums[2] = 22; // [1, 2, 22, 4]
        delete nums[1]; // [1, 0, 22, 4]
        nums.pop(); // [1, 0, 22]
        len = nums.length;
    }
    // Create array in memory
    // uint[] public memory a = new uint[](5);
    // a[1] = 123;
    function returnArray() external view returns (uint[] memory) {
        return nums;
    }
}