pragma solidity ^0.5.10;

import "solidity_tutorials/Lesson4/IntExtended.sol";

contract TestLibrary {
    using IntExtended for uint;
    //using IntExtended for *;

    function testIncrement(uint _base) public pure returns (uint){
        return _base.increment();
    }
    // function testIncrement(uint _base) public pure returns (uint){
    //     return IntExtended.increment(_base);
    // }

    function testIncrementByValue(uint _base, uint value) public pure returns(uint) {
        return _base.incrementByValue(value);
    }

    function testDecrement(uint _base) public pure returns(uint){
        return _base.decrement();
    }

    function testDecrementByValue(uint _base, uint value) public pure returns(uint) {
        return _base.decrementByValue(value);
    }
}