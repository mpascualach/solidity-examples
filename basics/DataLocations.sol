// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract DataLocations {
    // dynamic array
    uint[] public arr;

    // addresses mapped to indices
    mapping(uint => address) map;

    // new custom object
    struct MyStruct {
        uint foo;
    }

    // list of structs
    mapping(uint => MyStruct) myStructs;

    // public function - can be called from outside
    function f() public {
        _f(arr, map, myStructs[1]);

        // get a struct from a mapping
        MyStruct storage myStruct = myStructs[1];

        MyStruct memory myMemStruct = MyStruct(0);
    }

    function _f(
        uint[] storage _arr,
        mapping(uint => address) storage _map,
        MyStruct storage _myStruct
    ) internal {
        // do something with storage variables
    }

    // memory = stored within function; lasts only as long as the duration of the  function
    function g(uint[] memory) public returns (uint[] memory) {}

    // calldata = read-only; cannot be modified within function
    function h(uint[] calldata _arr) external {}
}
