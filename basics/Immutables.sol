// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

// Immutables = can be set within the constructor but cannot be modified after

contract Immutable {
    // also use uppercase variables for variable names
    address public immutable MY_ADDRESS;
    uint public immutable MY_UINT;

    constructor(uint _myUint) {
        MY_ADDRESS = msg.sender;
        MY_UINT = _myUint;
    }
}
