// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "hardhat/console.sol";

// openzeppelin libreries 
import {ERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MatchingFund {
    
    address public owner;
    IERC20 public dai;

    event PaymentDone (
        address payer,
        uint amount,
        uint paymentId,
        uint date
    );


   constructor(address ownerAddress, address daiAddress) {
    owner = ownerAddress;
    dai = IERC20(daiAddress);
   } 

    function pay(uint amount, uint paymentId) external {
        dai.transferFrom(msg.sender, owner, amount);
        emit PaymentDone(msg.sender, amount, paymentId, block.timestamp);
    } 
}        