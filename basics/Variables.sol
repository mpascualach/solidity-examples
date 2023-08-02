// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Variables {
    string public text = "Hello";
    uint public num = 123;

    function doSomething() public {
        // local variables aren't saved on the blockchain - just contained within functions
        uint i = 456;

        // Global variables = specific to the blockchain

        uint timestamp = block.timestamp; // Current block timestamp
        address sender = msg.sender; // address of caller
    }
}
