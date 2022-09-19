// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract VendingMachine {
    address public owner;
    mapping(address => uint) public donutBalances;

    constructor() {
        owner = msg.sender;
        donutBalances[address(this)] = 100;
    }

    function getDonutBalance() public view returns(uint){
        return donutBalances[address(this)]; 
    }
    function restockDonutBalance(uint _amount) public{
        require(msg.sender == owner, "only the owner can restock this machine");
        donutBalances[address(this)] += _amount;
    }

    function purchase(uint _amount) public payable {
        require(msg.value >= _amount * 0.1 ether, "You must pay a least 0.1 Ether per donut");
        require(donutBalances[address(this)] >= _amount, "not enough donuts in stiock to fulfill purchase request");
        donutBalances[address(this)] -= _amount;
        donutBalances[msg.sender] += _amount;
        payable (owner).transfer(_amount * 0.1 ether);
    }
    function getEtherBalance() public view returns(uint){
        return owner.balance;
    }
}