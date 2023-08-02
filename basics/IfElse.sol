// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

// just like in javascript
contract IfElse {
    function foo(uint x) public pure returns (uint) {
        if (x < 10) {
            return 0;
        } else if (x < 20) {
            return 1;
        } else {
            return 2;
        }
    }

    function ternary(uint x) public pure returns (uint) {
        return x < 10 ? 0 : 1;
    }
}
