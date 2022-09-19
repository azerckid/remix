// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

contract A{
    string public name;
    uint256 public age;

    constructor(string memory _name, uint256 _age){
        name = _name;
        age = _age;
    }
    function changeInfo(string memory _name, uint256 _age) public {
        name = _name;
        age = _age;
    }
}
contract B{
    A instance = new A("zizimoos", 55);

    function getInfo() public view returns(string memory, uint256){
        return (instance.name(), instance.age());
    }
    function change(string memory _name, uint256 _age) public {
        instance.changeInfo(_name, _age);
    }
}
