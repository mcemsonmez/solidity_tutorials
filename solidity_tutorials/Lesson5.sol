pragma solidity ^0.5.10;

contract Transaction{
    event SenderLogger(address);
    event ValueLogger(uint);

    address private owner;

    modifier isOwner{
        require(owner == msg.sender, "Owner is not the sender");
        _;
    }

    modifier validValue{
        assert(msg.value >= 1 ether);
        _;
    }

    constructor() public {
        owner = msg.sender;
    }

    // Fallback Function
    function() external payable isOwner validValue {
        emit SenderLogger(msg.sender);
        emit ValueLogger(msg.value);
    }
}