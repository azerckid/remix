// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.7.0 < 0.9.0;

contract lec4{
    uint256 public a = 3;
    // 1. parameter & return 값이 없는 function
    function changeA1() public {
        a = 5;
    }
    // 2. parameter는 있고 return 값이 없는 function
    function changeA2(uint256 _value) public {
        a = _value;
    }
    // 2. parameter도 있고 return 값도 있는 function
    function changeA3(uint256 _value) public returns(uint256){
        a = _value;
        return a;
    }
}