//SPDX-License-Identifier: UNLICENSED
pragma solidity >= 0.8.16;

// Smart contract đẩy ra bên ngoài để bên thứ 3 có thể bắt đc (token, ...)
contract Event{
  
    event deposit(address indexed form, uint amount);
    
    function depo3it(uint amount) external {
        // transfer token
        emit deposit(msg.sender, amount);
    }

}