// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Array {
    uint[] public arr;
    uint[] public arr2 = [1, 2, 3];

    // will only hold 10 units
    // all elements initialise to 0
    uint[10] public myFixedSizeArr;

    function get(uint i) public view returns (uint) {
        return arr[i];
    }

    // this kind of function should be avoided for arrays that might grow infinitely
    function getArr() public view returns (uint[] memory) {
        return arr;
    }

    function push(uint i) public {
        arr.push(i);
    }

    // push last element out
    function pop() public {
        arr.pop();
    }

    function getLength() public view returns (uint) {
        return arr.length;
    }

    // remove element from specified index
    function remove(uint index) public {
        delete arr[index];
    }

    // external = can only be called from outside contract
    function examples() external {
        uint[] memory a = new uint[](5);
        // memory = temporary; will only persist for the duration of the function
    }
}
