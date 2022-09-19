//SPDX-License-Identifier: UNLICENSED
pragma solidity <= 0.8.17;

contract Hello {
    uint public a = 10;

    function foo() public {
        a = 5;
    }
}

contract Hi{
    address AHello;
    function setAHello(address _Ahello) external{
        AHello = _Ahello;
    }

    function CallFoo() external {
        Hello h = Hello(AHello);
        h.foo();
    }
}