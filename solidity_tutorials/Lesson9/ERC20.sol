pragma solidity ^0.5.10;

interface ERC20 {
    function totalSupply() external pure  returns (uint _totalSupply);
    function balanceOf(address _owner) external pure returns (uint balance);
    function transfer(address _to, uint _value) external returns (bool success);
    function transferFrom(address _from, address _to, uint _value) external returns (bool success);
    function approve(address _spender, uint _value) external returns (bool success);
    function allowance(address _owner, address _spender) external pure returns(uint remaining);
    event Transfer(address indexed_from, address indexed_to, uint value);
    event Approval(address indexed_owner, address indexed_spender, uint _value);
}