// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

// MIT grants permission to anyone to use this code

contract Counter {
    uint public count;

    function get() public view returns (uint) {
        return count;
    }

    function inc() public {
        count += 1;
    }

    function dec() public {
        count -= 1;
    }
}
