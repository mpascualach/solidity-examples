// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

// mappings are kind of like flattened javascript objects

contract Mapping {
    mapping(address => uint) public myMap;

    function get(address _addr) public view returns (uint) {
        // get value at _addr key
        return myMap[_addr];
    }

    function set(address _addr, uint _i) public {
        // set value at _addr key
        myMap[_addr] = _i;
    }

    function remove(address _addr) public {
        // reset value at _addr key to default
        delete myMap[_addr];
    }
}

contract NestedMapping {
    // mapping within a mapping
    mapping(address => mapping(uint => bool)) public nested;

    function get(address _addr1, uint _i) public view returns (bool) {
        return nested[_addr1][_i];
    }

    function set(address _addr1, uint _i, bool _boo) public {
        nested[_addr1][_i] = _boo;
    }

    function remove(address _addr, uint _i) public {
        // reset value at _addr key to default
        delete nested[_addr][_i];
    }
}
