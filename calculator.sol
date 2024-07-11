// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title A simple calculator
/// @author David Gift
/// @notice You can use this contract to either add, substract, multiply or divide two positive integers
/// @dev All function calls are currently implemented without side effects
/// @custom:experimental This is an experimental contract.

contract Calculator {
    int x;
    int y;
    address owner;

    /// @notice A constructor to initialize the values of the integers, x and y
    /// @param _owner Input the address
    /// @param _x Input the value of the first integer, x
    /// @param _y Input the value of the second integer, y

    constructor(address _owner, int _x, int _y) {
        owner = _owner;
        x = _x;
        y = _y;
    }

    /// @notice A modifier that allows only the sender to deploy the contract    
    modifier IsOwner{
        require(msg.sender == owner, "only owners can access this") ;
        _;
}

    /// @notice A function that adds the two integers, x and y
    function addition() public view returns(int) {
     int add = x + y;
     require(add >= 0, "X must be less than Y");
     return add;     
    }

    /// @notice A function that subtracts the two integers, x and y    
    function substraction() public view returns(int) {
     int substract = x - y;
     assert(x >= y);
     return substract;
    }

    /// @notice A function that multiply the two integers, x and y
    function multiplication() public view returns(int) {
     int multiply = x * y;
     assert(multiply <= 100 && multiply >= 0);
     return multiply;
    }

    /// @notice A function that divides the two integers, x and y
    function division() public view returns(int) {
     int divide = x / y;
     require(x >= y, "X should be greater than or equals to Y");
     return divide;
    }

}
