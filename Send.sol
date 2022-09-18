//SPDX-License-Identifier: UNLICENSED
pragma solidity >= 0.8.16;

contract Send {
    function SendEther(address payable to, uint amount) external {
        to.transfer(amount);
    }

    //Gửi ether
    function BuySth() external payable{
        msg.value;
        address(this).balance;
    }

    //Nhận ether
    receive() external payable {
        //
    }
}