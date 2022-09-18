//SPDX-License-Identifier: UNLICENSED
pragma solidity <= 0.8.17;

// Muốn receive phải dùng payable
contract ContractA {
    address public owner;
    uint256 public balance;

    constructor() public {
        owner = msg.sender;
    }

    // implement hàm receive
    receive() external payable{
        balance = balance + msg.value;
    }

    // hàm receive
    function receivesETH() public payable{
        balance = balance + msg.value;
    }
}
