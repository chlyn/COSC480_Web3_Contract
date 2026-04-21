// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract SimpleBank {
    event Deposited(address indexed sender, uint256 amount);
    event Withdrawn(address indexed owner, uint256 amount);

    address public owner;
    uint256 public balance;

    constructor() {
        owner = msg.sender;
    }

    function deposit() public payable {
        require(msg.value > 0, "Must send ETH");
        balance += msg.value;
        emit Deposited(msg.sender, msg.value);
    }

    function withdraw(uint256 amount) public {
        require(msg.sender == owner, "Only owner can withdraw");
        require(amount <= balance, "Insufficient contract balance");

        balance -= amount;
        payable(owner).transfer(amount);

        emit Withdrawn(owner, amount);
    }

    function getBalance() public view returns (uint256) {
        return balance;
    }
}