// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract EtherWallet{
    
    address public owner;

    //initializing owner to msg.sender 

    constructor() {
        owner = msg.sender;
    }
    // Accepts Ether
   receive() external payable{}

    function withdraw(address payable _to, uint256 _amount) external payable {
        require(owner == msg.sender, "You are not Owner");
        require(_to != address(0),"invalid receipient");
        require(_amount > 0, "invalid amount");
        require(address(this).balance >= _amount, "invalid balance");



        (bool sent,) = _to.call{value: _amount}("");
        require(sent,"Transaction failed");
    }

    // check balance
    function checkBalance() external view returns (uint256){
        return address(this).balance;
    }

}