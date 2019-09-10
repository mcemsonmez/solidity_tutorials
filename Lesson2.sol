pragma solidity ^0.5.10;

interface Regulator {
    function loan() external returns(bool);
    function checkValue(uint amount) external returns (bool);
}

contract Bank is Regulator {
    uint private value;

    constructor (uint amount) public {
        value = amount;
    }

    function deposit(uint amount) public{
        value += amount;
    }
    function withdraw(uint amount) public {
        if(checkValue(amount)){
            value -= amount;
        }
    }
    function balance() public view returns (uint) {
        return value;
    }
    // Inheritance
    function loan() public returns(bool) {
        return value > 0;
    }
    function checkValue(uint amount) public returns(bool) {
        return value > amount;
    }
}


contract MyFirstContract is Bank(10) {
    string private name;
    uint private age;

    function setName(string memory _name) private {
        name = _name;
    }
    function getName() public view returns(string memory) {
        return name;
    }
    function setAge(uint _age) private {
        age = _age;
    }
    function getAge() public view returns(uint){
        return age;
    }

    // Inheritance
    // function loan() public returns(bool) {
    //     return true;
    // }
    // function checkValue(uint amount) public returns(bool) {
    //     return true;
    // }
}