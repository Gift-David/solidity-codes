// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title A playground
/// @author David Gift
/// @notice A contract that tells playground users thier playground based on their age
/// @dev All function calls are currently implemented without side effects
/// @custom:experimental This is an experimental contract.0
contract playground {

    /// @notice A function that returns the playground of users
    /// @param _age Input the user's age
    function venue( int _age) public pure returns(string memory) {

        require(_age > 0, "Put a valid age");
        
        if (_age < 13) {
            return "Go to the Children's playground";
        } else if(_age < 18){
            return "Go to the Teen's playground";
        } else {
            return "Go to the Adult's playground";
        }
    }
}
