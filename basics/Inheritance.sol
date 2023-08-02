// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

// solidity supports multiple inheritance
// use the 'is' keyword

/* Graph of inheritance
    A
   / \
  B   C
 / \ /
F  D,E

*/

contract A {
    function foo() public pure virtual returns (string memory) {
        return "A";
    }
}

contract B is A {
    // override A.foo();
    function foo() public pure virtual override returns (string memory) {
        return "B";
    }
}

contract C is A {
    // also override A.foo()
    function foo() public pure virtual override returns (string memory) {
        return "C";
    }
}

/* Graph of inheritance
    A
   / \
  B   C
    ...
*/

// contracts can inherit from multiple others

contract D is B, C {
    function foo() public pure override(B, C) returns (string memory) {
        return super.foo();
    }
}

contract E is C, B {
    // E.foo() returns "B"
    // since B is the right most parent contract with function foo()
    function foo() public pure override(C, B) returns (string memory) {
        return super.foo();
    }
}

contract F is A, B {
    function foo() public pure override(A, B) returns (string memory) {
        return super.foo();
    }
}
