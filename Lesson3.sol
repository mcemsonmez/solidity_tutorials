pragma solidity ^0.5.10;

interface Regulator {
    function checkValue(uint amount) external returns (bool);
    function loan() external returns(bool);
}


contract Bank is Regulator {
    uint private value;
    address private owner;

    modifier ownerFunc {
        require(owner == msg.sender, "Owner not the message sender");
        _;
    }

    constructor (uint amount) public {
        value = amount;
        owner = msg.sender;
    }

    function deposit(uint amount) internal ownerFunc {
        if(checkValue(amount)){
            value += amount;
        }
    }

    function withdraw(uint amount) private ownerFunc {
        if(checkValue(amount)){
            value -= amount;
        }
    }

    function balance() public view returns (uint) {
        return value;
    }

    function checkValue(uint amount) public returns (bool){
        return value >= amount;
    }

    function loan() public returns(bool) {
            return value > 0;
    }
}


contract MyFirstContract{
    string private name;
    uint private age;

    function setName(string memory newName) private{
        name = newName;
    }

    function getName() public view returns (string memory) {
        return name;
    }
    function setAge(uint newAge) private{
        age = newAge;
    }
    function getAge() public view returns (uint) {
        return age;
    }
}

contract TestThrow{
    function testAssert() public pure {
        assert(1 == 2);
    }

    function testRequeire() public pure {
        require(2 == 1, "2 is not equeal to 1");
    }
    function testRevert() public pure {
        revert("Test revert");
    }
    // function testThrow() public {
    //     throw;
    // }
}