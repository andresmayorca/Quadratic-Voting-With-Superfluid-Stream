// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "hardhat/console.sol";

// openzeppelin libreries 
import {ERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract MatchingFund{

    struct request {
        string description;
        uint value;
        address recipient;
        bool complete;
    }

    address public owner;
    uint public MinimumContribution;
    address[] public approvals;

    function compaing(uint minimum) public {
        owner = msg.sender;
        MinimumContribution = minimum;
    }                         

    function contribute() public payable{
        require(msg.value > MinimumContribution);
        approvals.push(msg.sender);
        console.log("funds sent successfully!");
    }                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
} 