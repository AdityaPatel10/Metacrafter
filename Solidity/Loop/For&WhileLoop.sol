// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
contract ForAndWhileLoop {
    uint[] public arr;
    function loops() external {
        for (uint i = 0; i < 10; i++) {
            if(i == 3) {
                continue;
            }
            if(i == 6){
                break;
            }
        }

        uint j = 0;
        while (j < 10) {
            j++;
            arr.push(j);
        }
    }
    function ReturnArray() external view returns (uint[] memory){
        return arr;
    }

    function sum(uint n) external pure returns (uint) {
        uint s;
        for (uint i = 1; i <= n; i++){
            s += i;
        } 
        return s;
    }
}