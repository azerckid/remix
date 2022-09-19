// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

contract Father {
    event FatherName(string name);
    function who() public virtual {
        emit FatherName("kimdaeho");
    }
}

contract Mother {
    event MotherName(string name);
    function who() public virtual {
        emit MotherName("leesol");
    }
}

contract Son is Mother, Father {
    function who() public override(Father, Mother) {
        super.who();
    }
}