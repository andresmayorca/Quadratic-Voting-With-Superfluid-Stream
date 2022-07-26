//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/access/Ownable.sol";

/**
@title Owned
@dev establishes contract owner, implements modifier to require owner 
status, and allows transfer of ownership
*/

contract Owned {

    address public owner;

    constructor() { 
        owner = msg.sender;
    }
    modifier onlyOwner { require (msg.sender == owner); _; }

    function transferOwnership(address newOwner) onlyOwner public { 
        owner = newOwner; 
    }
}