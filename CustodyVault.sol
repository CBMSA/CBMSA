// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CustodyVault {
    address public admin;
    uint public totalReserves;

    constructor() {
        admin = msg.sender;
    }

    function deposit() public payable {
        totalReserves += msg.value;
    }

    function getReserves() public view returns (uint) {
        return totalReserves;
    }
}
