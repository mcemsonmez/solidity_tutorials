library IntExtended{
    function increment(uint _self) public pure returns (uint) {
        return _self + 1;
    }

    function decrement(uint _self) public pure returns (uint) {
        return _self - 1;
    }

    function incrementByValue(uint _self, uint value) public pure returns(uint){
        return _self + value;
    }

    function decrementByValue(uint _self, uint value) public pure returns(uint){
        return _self - value;
    }
}