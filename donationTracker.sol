// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title A Donation Tracker
/// @author David Gift
/// @notice You can use this contract to track the amount of donations made by donors
/// @dev All function calls are currently implemented without side effects
/// @custom:experimental This is an experimental contract.
contract DonationTracker {
    mapping(address => int) public Donations;
    address[] public  donors;

    /// @notice A constructor that allows the contract to receive ether
    constructor() payable {
        
    }

    fallback() external payable {
        // donate();
     }
    receive() external payable { }

    /// @notice A function to get the number of donators
    function donators() public view returns(uint) {
        return donors.length;
    }

    /// @notice A functon to get the amount donated by each donor
    function getDonation(address _donor) public view returns(int) {
        return Donations[_donor] ;
        
    }

    /// @notice A funcion to donate
    /// @param _donor Input the address of the donor
    /// @param value Input the amount to be donated
    function donate(address _donor, int value) public payable {
        Donations[_donor] = value;
    }

}
