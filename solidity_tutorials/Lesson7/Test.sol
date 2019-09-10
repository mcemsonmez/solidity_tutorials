pragma solidity ^0.5.10;

import("solidity_tutorials/Lesson7/Lesson7.sol");

contract TestStrings{
    using Strings for string;
    function testConcat(string memory _base) public pure returns(string memory) {
        return _base.concat("_suffix");
    }

    function testStrPos(string memory _base) public pure returns (int){
        return _base.strpos("t");
    }
}