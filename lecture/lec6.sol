// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.7.0 < 0.9.0;

contract lec6{
    uint256 public a = 1;

    function read_a() public view returns(uint256) {
        return a+2;
    }

    function read_a1() public pure returns(uint256){
        uint256 b = 11;
        return 4+2+b;
    }

    function read_a2() public returns(uint256){
        a = 12;
        return 4+a;
    }
   
}