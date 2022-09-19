// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

contract lec5{
// 접근제한자 public, private, internal, external
    uint256 public a = 5;
    uint256 private pa = 6;
   
    function changeA(uint256 _value) external {
        a = _value; 
    }
    function get_A() view external returns(uint256){
        return  a;
    }

}
contract lec5_1 is lec5{
}

contract lec5_2{
    lec5 instance = new lec5();

    function changeA_1(uint256 _value) public{
        instance.changeA(_value);
    }
    function use_lec5() view public returns (uint256){
        return instance.get_A();
    }
}