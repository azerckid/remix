// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.7.0 < 0.9.0;

contract lec2{
    bool public b = false;
    bool public b1 = !false;
    bool public b2 = false || true;
    bool public b3 = false == true;
    bool public b4 = false && true;

    // bytes 1 ~ 32
    bytes1 public bt1 = 0x12;
    bytes4 public bt4 = 0x12345678;
    bytes5 public bt5 = 0x1234567890;
    bytes public bt6 = "string";

    address public addr = 0xd8b934580fcE35a11B58C6D73aDeE468a2833fa8; //  

    // int8 -2^7 ~ 2^7-1
    // uint8 0 ~ (2^8-1 === 255)
    int8 public intt = 4;
    int8 public iint = 127;

    uint256 public uintt = 13132;
}