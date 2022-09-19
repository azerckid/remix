// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

contract Father{
    string public familyName = "kim";
    string public givenName = "sulho";
    uint256 public money = 100;
    
    constructor(string memory _givenName) {
        givenName = _givenName;
    }

    function getFamilyName() public  view returns(string memory){
        return familyName;
    }
    function getGivenName() public  view returns(string memory){
        return givenName;
    }
    function getMoney() public view returns(uint256){
        return money;
    }
}
contract Son is Father("happy"){
}