// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Todos {
    // struct = custom object
    struct Todo {
        string text;
        bool completed;
    }

    // array of previously-made custom objects
    Todo[] public todos;

    function create(string calldata _text) public {
        // 3 ways to initialise a struct
        // 1: declare it like a function
        // each argument implicitly corresponds to each key in same index
        todos.push(Todo(_text, false));

        // 2: key value mapping - assign values to struct keys
        todos.push(Todo({text: _text, completed: false}));

        // 3: initialise empty struct and then update its properties
        Todo memory todo;
        todo.text = _text;
        //todo.completed initialised to false anyway
        todos.push(todo);
    }

    function get(
        uint _index
    ) public view returns (string memory text, bool completed) {
        // read struct in struct array
        Todo storage todo = todos[_index];
        return (todo.text, todo.completed);
    }

    function updateText(uint _index, string calldata _text) public {
        // get struct at index of struct array
        Todo storage todo = todos[_index];
        // edit said struct's property
        todo.text = _text;
    }

    function toggleCompleted(uint _index) public {
        // toggle binary property in struct
        Todo storage todo = todos[_index];
        todo.completed = !todo.completed;
    }
}
