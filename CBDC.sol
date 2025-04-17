
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CBDC {
    address public admin;
    mapping(address => uint256) public balances;

    constructor() {
        admin = msg.sender;
    }

    function mint(address to, uint256 amount) external {
        require(msg.sender == admin, "Only admin can mint");
        balances[to] += amount;
    }

    function transfer(address to, uint256 amount) external {
        require(balances[msg.sender] >= amount, "Insufficient balance");
        balances[msg.sender] -= amount;
        balances[to] += amount;
    }

    function balanceOf(address user) external view returns (uint256) {
        return balances[user];
    }
}
