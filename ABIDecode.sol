// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title A contract for encoding and decoding
/// @author David Gift
/// @notice You can use this contract to encode inputs into bytes and then decode it
/// @dev All function calls are currently implemented without side effects
/// @custom:experimental This is an experimental contract.
contract ABIDecode {
    struct MyStruct {
        string name;
        uint[2] nums;
    }

    /// @notice To encode the given inputs
    /// @param x Input the value of x to be encoded
    /// @param addr Input the address to bhe encoded
    /// @param myStruct Input the name and nums to be encoded 
    function encode (uint x, address addr, uint[] calldata arr, MyStruct calldata myStruct) public pure returns (bytes memory) {
        return abi.encode(x, addr, arr, myStruct);
    }

    /// @notice To encode the given inputs
    /// @param data Input the code to be encoded
    function decode (bytes calldata data) public pure returns (uint x, address addr, uint[] memory arr, MyStruct memory myStruct) {
        (x, addr, arr, myStruct) = abi.decode(data, (uint, address, uint[], MyStruct));
    }
}
