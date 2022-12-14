// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract Lottery {
    address public owner;
    address payable[] public  players;
    uint256 public lotteryId;
    mapping (uint => address payable) public lotteryHistory;

    constructor(){
        owner = msg.sender;
        lotteryId = 1;
    }

    function getWinnerByLottery(uint256 _lotteryId) public view returns (address payable ){
        return lotteryHistory[_lotteryId];
    }

    function getBalance() public view returns (uint){
        return  address(this).balance;
    }

    function getPlayers() public view returns (address payable[] memory ){
        return players;
    }

    function enter() public payable {
        require(msg.value > 0.1 ether);
        // address of player entering lottery
        players.push(payable(msg.sender));
        payable (owner).transfer(0.1 ether);
    }

    function _getRandomNumber() public view returns(uint){
        return uint(keccak256(abi.encodePacked(owner, block.timestamp)));
    }

    function pickWinner() public onlyOwner {
        uint index = _getRandomNumber() % players.length;
        players[index].transfer(address(this).balance);

        lotteryHistory[lotteryId] = players[index];
        lotteryId++;

        // reset the state of the contract
        players = new address payable[](0);
    }

    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }
}