// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract fund{

    struct request {
        string description;
        uint value;
        address recipient;
        bool complete;
    }

    address public manager;
    uint public MinimumContribution;
    address[] public approvals;

    function compaing(uint minimum) public {
        manager = msg.sender;
        MinimumContribution = minimum;
    }                         

    function contribute() public payable{
        require(msg.value > MinimumContribution);
        approvals.push(msg.sender);
    }                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
} 