// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title A Cryptographic Hash
/// @author David Gift
/// @notice Using Kaccak256 to encode inputs
/// @dev All function calls are currently implemented without side effects
/// @custom:experimental This is an experimental contract.
contract Hash {
    address owner;
    string name;
    uint amount;

    /// @notice Using Kaccak256 to encode inputs
    /// @param _owner Input the address to be hatched
    /// @param _name Input the name to be hatched
    /// @param _amount Input the amount to be hatched
    constructor(address _owner, string memory _name, uint _amount) {
        owner = _owner;
        name = _name;
        amount = _amount;
    }

    /// @notice A function to encode the Inputs
    function encode() public view returns(bytes32) {
        return keccak256(abi.encodePacked(owner, name, amount));
    }
}
