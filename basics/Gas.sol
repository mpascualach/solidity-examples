// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

// gas is a representation of the computation required to carry out an action
// gas spent = total amount of gas used in transaction
// gas price = how much ether you're willing to pay for gas

contract Gas {
    uint public i = 0;

    function forever() public {
        // this loop runs until all gas is spent == no limit lol
        while (true) {
            i += 1;
        }
    }
}
