// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
contract LoopStressTest {
    uint public simple;
    uint public complex;
    function SimpleStress() external {
        uint sum;
        for (uint i = 0; i < 1000; i++) {
            sum += i;
        }
        simple = sum;
    }
    function ComplexStress() external {
        uint multi;
        for (uint j = 1; j <= 100; j++) {
            multi *= j;
            if(multi == 0) {
                multi = 1;
            }
        }
        complex = multi;
    }
}