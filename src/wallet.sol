// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract EtherWallet{
    
    address public owner;

    //initializing owner to msg.sender 

    constructor() {
        owner = msg.sender;
    }



}