// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.7.0 < 0.9.0;

contract lec3{

    // 1 ether = 10^9 Gwei = 10^18 wei
    // 0.01 ether = 10^16 wei

    uint256 public value = 1 ether; //2의 18제곱, 0이 18개 
    uint256 public value2 = 1 wei;
    uint256 public value3 = 1 gwei; //2의 18제곱, 0이 9개
}