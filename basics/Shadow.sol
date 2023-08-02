// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract A {
    string public name = "Contract A";

    function getName() public view returns (string memory) {
        return name;
    }
}

// This form of override isn't allowed - as of Solidity 0.6
// contract B is A {
//     string public name = "Contract B";
// }

// This is how to override state variables in parent contracts now
contract C is A {
    constructor() {
        name = "Contract C";
    }
}
