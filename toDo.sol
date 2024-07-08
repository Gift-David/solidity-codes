// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
/// @title A simple to-do list
/// @author David Gift
/// @notice A contract for storing and sending ether
/// @dev All function calls are currently implemented without side effects
/// @custom:experimental This is an experimental contract.

contract ToDoList {

    /// @notice A structure to store each item 
    struct ToDo {
        string text;
        bool completed;
    }

    ToDo[] public todos;

        /// @notice A contract for storing and sending ether
        /// @param _text Input the text for the to-do
        function create(string calldata _text) public {
            todos.push(ToDo({
                text: _text,
                completed: false
            }));
        }

        /// @notice To get the number of to-do items stored
        function getLength() public view returns(uint) {
            return todos.length;
        }

        /// @notice To edit an item in the to-do
        /// @param _index Input the index of the item to be edited
        /// @param _text Input the new text
        function updateText(uint _index, string calldata _text) public {
            todos[_index].text = _text;
        }


        /// @notice To get the text and status of an item
        /// @param _index Input the index of the item to get
        function get(uint _index) public view returns(string memory, bool) {
            ToDo storage todo = todos[_index];
            return (todo.text, todo.completed);
        }

        function toggleCompleted(uint _index) public  {
            todos[_index].completed = !todos[_index].completed;
        }
    
}
