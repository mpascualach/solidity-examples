// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract SimpleStorage {
    uint public num;

    function set(uint _num) public {
        // put item into storage / update item in storage
        num = _num;
    }

    function get() public view returns (uint) {
        // see item in storage
        return num;
    }
}
