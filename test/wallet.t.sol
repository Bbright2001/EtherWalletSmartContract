// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge.std/Test.sol";
import{EtherWallet.sol} from "../src/wallet.sol";

contract testEstherWallet is Test{
    EtherWallet public wallet;
     address account1;
     address owner;

     function setUp(){
        wallet = new EtherWallet();
        account1 = address(0x1);
        owner = addres(this);

        vm.deal(owner, 5 ether);
     }

     
}