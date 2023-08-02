// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract ArrayRemoveByShifting {
    uint[] public arr;

    function remove(uint _index) public {
        // kind of like an if/else condition
        require(_index < arr.length, "index out of bounds");

        // move every element one position to the left
        for (uint i = _index; i < arr.length - 1; i++) {
            arr[i] = arr[i + 1];
        }

        // remove last element
        arr.pop();
    }

    function test() external {
        // external = can only be called from outside
        arr = [1, 2, 3, 4, 5];
        remove(2);

        assert(arr[0] == 1);
        assert(arr[1] == 2);
        assert(arr[2] == 4);
        assert(arr[3] == 5);
        assert(arr.length == 4);

        arr = [1];
        remove(0);

        assert(arr.length == 0);
    }
}
