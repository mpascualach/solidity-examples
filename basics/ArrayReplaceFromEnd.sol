// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract ArrayReplaceFromEnd {
    uint[] public arr;

    function remove(uint index) public {
        // move element at selected index to end of array
        arr[index] = arr[arr.length - 1];
        // remove element at end of array
        arr.pop();
    }

    function test() external {
        arr = [1, 2, 4, 5];
        remove(1);

        assert(arr.length == 3);
        assert(arr[0] == 1);
        assert(arr[1] == 4);
        assert(arr[2] == 3);

        remove(2);
        // [1,4];
        assert(arr.length == 2);
        assert(arr[0] == 1);
        assert(arr[1] == 4);
    }
}
