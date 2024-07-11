// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title Transferring Ether
/// @author David Gift
/// @notice A contract to transfer ether either by transfer, call or send
/// @dev All function calls are currently implemented without side effects
/// @custom:experimental This is an experimental contract.
contract ERC4337 {

    address payable owner;
    string name;

    /// @notice A constructor that allows the contract to receive ether
    constructor(address payable _owner, string memory _name) payable {
        owner = _owner;
        name = _name;
    }

    receive() external payable { }
    fallback() external payable { }

    /// @notice A function to transfer ether via transfer
    function sendViaTransfer(uint amount, address payable _receiver) public payable{
        _receiver.transfer(amount);
    }

    /// @notice A function to transfer ether via send
    function sendViaSend(uint amount, address payable _receiver) public payable{
        bool value = _receiver.send(amount);
        require(value == true, "Failed to send Ether");
    }

    /// @notice A function to transfer ether via call
    function sendViaCall(uint amount, address payable _receiver) public payable{
        (bool value, ) = _receiver.call{value:amount} ("");
        require(value == true, "Failed to send Ether");
    }

}
