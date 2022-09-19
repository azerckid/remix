// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

contract A{
    uint256 public a = 5;

    function change(uint256 _value) public {
        a = _value;
    }
}

contract B{
    A instance = new A();
    uint256 public b;

    function get_a() public view returns (uint256) {
        return instance.a();
    }
    function change_a(uint256 _value) public {
        instance.change(_value);
    }
    function change_aa(uint256 _value) public returns (uint256){
        b = instance.a() + _value;
        return b;
    }
}