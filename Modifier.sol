//SPDX-License-Identifier: UNLICENSED
pragma solidity >= 0.8.16;

// Modifier dùng để gọi trong function
contract Modifier{
    uint a = 10;

    function foo(uint Foo) public CheckA(Foo) {
        a = 5;
    }

    function bar() public CheckA(10) CheckB {
        
    }

    modifier CheckA (uint test){
        require(a == 8, "a need to be equal 8");
        _;
    }

    modifier CheckB(){
        _;
    }

}