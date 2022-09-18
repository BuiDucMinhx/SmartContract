//SPDX-License-Identifier: UNLICENSED
pragma solidity <= 0.8.16;

import "hardhat/console.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Minh is ERC20("Floppy", "FLP"),  ERC20Burnable, Ownable {

}