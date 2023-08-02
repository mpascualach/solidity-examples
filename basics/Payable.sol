// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Payable {
    // payable = can receive/manage ether
    address payable public owner;

    // allow for contract to receive ether
    constructor() payable {
        owner = payable(msg.sender);
    }

    // call this function with ether = store ether on contract
    function deposit() public payable {}

    // will throw error if called with ether - since it's not a payable function
    // we need to specify which functions/variables can handle ether
    function notPayable() public {}

    // withdraw all ether from contract
    function withdraw() public {
        // get all ether stored on this account
        uint amount = address(this).balance;

        // transfer it to owner
        (bool success, ) = owner.call{value: amount}("");
        require(success, "Failed to send ether");
    }

    // transfer ether from this contract to some other address
    // why are these called contracts if they can store money?
    function transfer(address payable _to, uint _amount) public {
        // missing argument = data sent from .call()
        (bool success, ) = _to.call{value: _amount}("");
    }
}
