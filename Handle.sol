//SPDX-License-Identifier: UNLICENSED
pragma solidity >= 0.8.16;

// dùng requie thay vì throw khi hàm chạy lỗi
contract Handle{
    uint a = 10;

    function foo() public {
        a = 5;
        require (a == 8 , "a need to be 8");
        // chạy
        // chạy
        // error
    }

}