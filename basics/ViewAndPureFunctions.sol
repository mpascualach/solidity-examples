// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract ViewAndPure {
    uint public x = 1;

    // view = state won't be changed - just a GET call
    function addToX(uint y) public view returns (uint) {
        return x + y;
    }

    // pure = state won't be modified or read from
    function add(uint i, uint j) public pure returns (uint) {
        return i + j;
    }
}
