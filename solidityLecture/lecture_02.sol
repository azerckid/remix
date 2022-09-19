// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

contract lec02{
    //primitive
    // boolean

    bool public b = false;
    bool public c = !false;
    // ==, &&, ||
    bool public d = false == false;
    string public hi = "Hello solidity";
    
    
    // byte
    bytes4 public bt = 0x12345678; // 8 자리를 채워야 함
    bytes public  bt1 = "MYNAME";

    // address 20 byte 즉 40 자리
    address public  myaddr = 0xf8e81D47203A594245E36C48e151709F0C19fBe8;

    // int8 -2^7 ~ 2^7-1
    // uint8 0 ~ 2^8-1
    uint8 public number = 4;
    uint256 public bigNumber = 123141;
    // + , - , * , /
    uint8 public errNumber = 256;

}