// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract FunctionModifier {
    address public owner; // initialised to 0x000...0000
    uint public x = 10;
    bool public locked;

    constructor() {
        owner = msg.sender; // 'owner' set to current user's address
    }

    // modifiers run before/after a call
    // e.g. this one checks whether the user is an owner before running a function
    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _; // _ = execute rest of code
    }

    modifier validAddress(address _addr) {
        require(_addr != address(0), "Not a valid address");
        _;
    }

    function changeOwner(
        address _newOwner
    ) public onlyOwner validAddress(_newOwner) {
        // check if being run by owner
        // check if owner's address is valid
        // transfer ownership to a new owner
        owner = _newOwner;
    }

    modifier noReentrancy() {
        // reentrancy = a smart contract vulnerability where a function is called repeatedly before the previous execution has been completed, leading to unexpected behaviour and vulnerability
        require(!locked, "No reentrancy");

        locked = true;
        // lock contract then run rest of function
        _;
        // run this after function has been run (i.e. open contract again)
        locked = false;
    }

    function decrement(uint i) public noReentrancy {
        x -= i;

        if (i > 1) {
            decrement(i - 1);
        }
    }
}
