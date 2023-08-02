// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

/* 
fallback is executed when:
    1) a non-existant function is called
    2) ether is sent to contract but receive() doesn't exist or msg.data isn't empty
*/
contract Fallback {
    event Log(string func, uint gas);

    fallback() external payable {
        emit Log("fallback", gasleft());
    }

    receive() external payable {
        emit Log("receive", gasleft());
    }

    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
}

contract SendToFallback {
    function transferToFallBack(address payable _to) public payable {
        _to.transfer(msg.value);
    }

    function callFallback(address payable _to) public payable {
        (bool sent, ) = _to.call{value: msg.value}("");
    }
}
