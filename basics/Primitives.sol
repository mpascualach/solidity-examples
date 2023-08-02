// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Primitives {
    bool public boo = true;

    uint8 public u8 = 1; // between 0 and (2**8)-1
    uint public u256 = 456; // between 0 and (2**256)-1
    uint public u = 123; // uint = uint256

    int8 public i8 = -1;
    int public i256 = 456;
    int public i = -123;

    int public minInt = type(int).min;
    int public maxInt = type(int).max;

    address public addr = 0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c;

    /* Bytes = each bit of data is represented by them
    Allows for manipulation of data at the most granular level
    You get to work with different types of data efficiently this way
    */
    bytes1 a = 0xb5;
    bytes1 b = 0x42;

    bool public defaultBoo; // false
    uint public defaultUint; // 0
    int public defaultInt; // 0
    address public defaultAddr; // 0x0000000000000000000000000000000000000000
}
