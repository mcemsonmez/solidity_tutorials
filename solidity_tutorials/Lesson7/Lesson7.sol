pragma solidity ^0.5.10;

library Strings{
    function concat(string memory _base, string memory _value) internal pure returns (string memory) {
        bytes memory _baseBytes = bytes(_base);
        bytes memory _valueBytes = bytes(_value);

        string memory _tempValue = new string(_baseBytes.length + _valueBytes.length);
        bytes memory _newValue = bytes(_tempValue);

        uint i;
        uint j;

        for(i = 0; i<_baseBytes.length; i++){
            _newValue[j++] = _baseBytes[i];
        }
        for(i = 0; i<_valueBytes.length; i++){
            _newValue[j++] = _valueBytes[i];
        }
        return string(_newValue);
    }

    function strpos(string memory _base, string memory _value) internal pure returns (int) {
        bytes memory _baseBytes = bytes(_base);
        bytes memory _valueBytes = bytes(_value);
        assert(_valueBytes.length == 1);
        for(uint i = 0; i<_baseBytes.length; i++){
            if(_baseBytes[i] == _valueBytes[0]){
                return int(i);
            }
        }
        return -1;
    }
}