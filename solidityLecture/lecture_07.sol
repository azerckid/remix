// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

// storage : 변수, 함수, 영속적 저장, 가스비 비쌈
// memory : 함수 파라미터,  레퍼런스 타입, 리턴값, 함수안이 변수, 함수안에서만 유효함으로 가스비 저렴함.
// colldata : external function의 파라메타
// stack : EVM 에서 stack data를 관리할때 쓰는 영역

contract lec7{
    // string은 레퍼런스 타입이다. 그래서 memory를 적시해야 한다.
    function stringA(string memory _value) public pure returns (string memory){
        return _value;
    }
    // primitive type은 memory라고 적시 하지 않아도 memory로 인식됨.
    function uinA(uint256 _value)public  pure  returns (uint256){
        return _value;
    }
}
