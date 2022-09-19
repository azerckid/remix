// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

contract lec3{
   
    //1^-18 ether = 1 wei
    //1 ether = 10^18 wei
    
    //1 gwei = 10^9 wei // 가스의 단위
    //1 gwei = 10^-9 ether // 가스의 단위

    uint256 public valueEth = 1 ether;
    uint256 public valueGwei = 1 gwei;
    uint256 public valueWei = 1 wei;

    // 배포, 함수부를떼, 변수를 부를 때도 가스가 소비돕니다.
}