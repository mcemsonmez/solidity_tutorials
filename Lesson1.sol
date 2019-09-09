pragma solidity ^0.5.10;

contract MyFirstContact {
    string name;
    uint age;

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
}