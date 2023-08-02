// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

// events = allow for logging to ethereum blockchain

contract Event {
    // up to three parameters can be indexed
    // indexed parameters = you can filter the logs by indexed parameter
    event Log(address indexed sender, string message);
    event AnotherLog();

    function test() public {
        emit Log(msg.sender, "Hello World!");
        emit Log(msg.sender, "Hello EVM!");
        emit AnotherLog();
    }
}
