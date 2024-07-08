// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
/// @title An Ether wallet
/// @author David Gift
/// @notice A contract for storing and sending ether
/// @dev All function calls are currently implemented without side effects
/// @custom:experimental This is an experimental contract.

contract EtherWallet {
    address public owner;

    /// @notice To receive ether upon deployment
    constructor() {
        owner = payable(msg.sender);
    }

    receive() external payable { }

     /// @notice To send ether from only the address of the owner
    /// @param _to Input the address you want to withdraw to
    /// @param _amount Input the amount you want to send
    function withdraw(address payable  _to, uint _amount) public {
        require(msg.sender == owner, "You are not the owner");
        _to.transfer(_amount);
    }

    /// @notice To get the balance of the contract
    function getBalance() public view returns(uint) {
        return address(this).balance;
    }
    
}
