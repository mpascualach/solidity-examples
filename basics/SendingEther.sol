// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract ReceiveEther {
    /*
    Which function is called, fallback() or receive()?

           send Ether
               |
         msg.data is empty?
              / \
            yes  no
            /     \
receive() exists?  fallback()
         /   \
        yes   no
        /      \
    receive()   fallback()
    */

    // one of the two functions below are needed in order to manage/send ether

    // function to receive ether
    // msg.data must be empty
    receive() external payable {}

    // called when msg.data isn't empty
    fallback() external payable {}

    function getBalance() public view returns (uint) {
        // get balance on contract
        return address(this).balance;
    }
}

contract SendEther {
    // no longer recommended for selling ether
    // limit of 2300 gas
    function sendViaTransfer(address payable _to) public payable {
        _to.transfer(msg.value);
    }

    // also limit of 2300 gas
    // not recommended either
    function sendViaSend(address payable _to) public payable {
        bool sent = _to.send(msg.value);
        require(sent, "Failed to send ether");
    }

    // this function in combination with re-entrancy guard recommended as of 2019
    function sendViaCall(address payable _to) public payable {
        // msg.value = proposed amount of eth
        (bool sent, bytes memory data) = _to.call{value: msg.value}("");
        require(sent, "Failed to send ether");
    }
}
