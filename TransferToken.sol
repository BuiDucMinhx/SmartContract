//SPDX-License-Identifier: UNLICENSED
pragma solidity <= 0.8.17;

import './Token.sol';

contract TransferToken{
    function transfer() external {
        Token token = Token(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);
        token.transfer(msg.sender, 100);
    }

    function transferFrom(address recepient, uint amount) external {
        Token token = Token(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);
        token.transferFrom(msg.sender, recepient, amount);
    }
}
contract Owner {
    function transfer(address recipient, uint amount) external {
        Token token = Token(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);
        token.approve(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4, amount);

        TransferToken transferToken = TransferToken(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);
        transferToken.transferFrom(recipient, amount);

    }
}