// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

// 아무것도 안쓰면 선언된 함수 밖의 변수를 읽고 쓰고
// view : 선언된 함수 밖의 변수를 읽기만 하고 쓰지 않을때 
// pure : 선언된 함수 밖의 변수를 읽지도 쓰지도 못함

contract lec6{
    uint256 public a = 1;

    function readA_1() public view  returns (uint256){
        return a;
    }
    function readA_2() public pure returns (uint256){
        uint256 b = 2; //storage에 저장 안됨
        return b;
    }
    function readA_3(uint256 _value) public returns(uint256){
        a = _value;
        return a;
    }
}