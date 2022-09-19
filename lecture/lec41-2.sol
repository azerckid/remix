// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;
import "./lec41-1.sol";

contract lec41 is HiSolidity {
    using SafeMath for uint8;
    uint8 public a; 
    
    function becomeOverflow(uint8 _num1,uint8 _num2) public  {
       // a = _num1.add(_num2);
        a = SafeMath.add(_num1 ,_num2);
    }
}