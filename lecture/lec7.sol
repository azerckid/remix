// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.7.0 < 0.9.0;

contract lec7{
    function get_string(string memory _str) public pure returns(string memory){
        return _str;
    }
    function get_uint(uint256 _ui) public pure returns(uint256){
        return _ui;
    }
}