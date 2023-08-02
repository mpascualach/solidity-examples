// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract X {
    string public name;

    // constructor = optional function called upon a contract's execution
    // often assigns all state variables
    constructor(string memory _name) {
        name = _name;
    }
}

contract Y {
    string public text;

    constructor(string memory _text) {
        text = _text;
    }
}

// Two ways to initialise parent contract

// 1: pass parameters to inheritance list
contract B is X("Input to X"), Y("Input to Y") {

}

// here - it works similarly to function modifiers
contract C is X, Y {
    constructor(string memory _name, string memory _text) X(_name) Y(_text) {}
}

contract D is X, Y {
    constructor() X("X was called") Y("Y was called") {}
}
