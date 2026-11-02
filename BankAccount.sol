// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract BankAccount {
    uint public balance;

    function deposit() public payable {
        balance = balance + msg.value;
    }

    function withdraw(uint amount) public {
        require(amount <= balance, "Insufficient balance");
        balance = balance - amount;
        payable(msg.sender).transfer(amount);
    }

    function showBalance() public view returns (uint) {
        return balance;
    }
}