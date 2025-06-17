// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import{EtherWallet} from "../src/wallet.sol";

contract testEstherWallet is Test{
    EtherWallet public wallet;
     address payable account1;
     address owner;

 
     function setUp() public{
        wallet = new EtherWallet();
        account1 = payable(address(0x1));
        owner = address(this);

        vm.deal(address(wallet), 5 ether);
     }

     function testWithdrawEtherAndGetBalance() public {
        vm.prank(owner);
        wallet.withdraw(account1, 2 ether);

       (uint256 balance) = wallet.checkBalance();

        assertEq(balance, 3 ether);
     }
}