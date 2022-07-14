//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.9;

// openzeppelin libraries
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract dai is ERC20 {
    constructor() ERC20("Dai StableCoin", "Dai") public {}

    function faucet(address to, uint amount) external {
        _mint(to, amount);
    }
}
