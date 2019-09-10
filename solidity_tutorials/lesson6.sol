pragma solidity ^0.5.10;

contract DataTypes{
    bool myBool = true;

    int8 myInt = -128; //multiples of eight
    uint8 myUInt = 255;

    string myString = "Test string";

    uint8[] myIntArray;
//     function myFunc(string[] memory s) public{

//     }
    bytes myValue;
    bytes1 myBites1;
    bytes32 myBites32;

    /*fixed myFixed; - No fixed type error. Future concept.
        fixed256x8 myFixed = 1; // 255.0
        ufixed myFixed2 = 1;
    */

    enum Action{
        ADD,
        REMOVE,
        UPDATE
    }
    Action myAction = Action.ADD;

    address payable myAddress;

    function assignedAddress() public {
        myAddress = msg.sender;
        myAddress.balance;
        myAddress.transfer(10);
    }

    uint[] myIntArr = [1,2,3];
    function arrFunc() public {
        myIntArr.push(10);
        myIntArr.length;
        myIntArr[0];
    }
    uint[10] myFixedArr;

    struct Account {
        uint balance;
        uint dailyLimit;
    }
    Account myAccount;
    function structFunc() public {
        myAccount.balance = 0;
    }

    mapping (address => Account) _accounts;
    function mappingFunc() public payable {
        _accounts[msg.sender].balance += msg.value;
    }

    function getBalance() public view returns (uint) {
        return _accounts[msg.sender].balance;
    }
 }