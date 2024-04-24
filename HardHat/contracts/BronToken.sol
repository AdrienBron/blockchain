// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.24;

//declare le contrat BronToken
contract BronToken {
    string public name = "BronToken";
    string public symbol = "BTKN";

    //declare une variable de type uint
    uint256 public totalSupply = 1000000;

    address public owner;

    mapping(address => uint256) public balances;

    event Transfer(address indexed from, address indexed to, uint256 value);


    constructor(){
        balances[msg.sender] = totalSupply;
        owner = msg.sender;
    }    

    function transfer(address to, uint256 value) external{
        require(balances[msg.sender] >= value, "Insufficient balance");
        balances[msg.sender] -= value;
        balances[to] += value;
        emit Transfer(msg.sender, to, value);
    }

    function balance0f(address account) external view returns (uint256){
        return balances[account];
    }

}

