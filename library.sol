// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title Practicing Library
/// @author David Gift
/// @notice Using library to store a function that gets the maximum between two inputed integers, x and y
/// @dev All function calls are currently implemented without side effects
/// @custom:experimental This is an experimental contract.



/// @notice A library that stores a function to get the maximum between two inputed integers, x and y
library Math {
    function max(uint x, uint y) internal pure returns(uint) {
        return x >= y? x : y;
    }
}

/// @notice The contract where the library would be called
contract Test {
    function testMax(uint x, uint y) public pure returns(uint) {
        return Math.max(x, y);
    }
}

}
