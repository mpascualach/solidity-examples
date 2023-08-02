// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Function {
    // functions can return many variables
    function returnMany() public pure returns (uint, bool, uint) {
        return (1, true, 2);
    }

    // they can be named as is
    function named() public pure returns (uint x, bool b, uint y) {
        return (1, true, 2);
    }

    // return values can be assigned too (?)
    function assigned() public pure returns (uint x, bool b, uint y) {
        x = 1;
        b = true;
        y = 2;
    }

    // destructuring is optimal when extracting values from a function that returns many of them
    function destructuringAssignments()
        public
        pure
        returns (uint, bool, uint, uint, uint)
    {
        (uint i, bool b, uint j) = returnMany();

        // values can be left out - in the interest of extracting only those values necessary
        (uint x, , uint y) = (4, 5, 6);

        return (i, b, j, x, y);
    }

    // map cannot be used either for input or output

    // array as input allowed
    function arrayInput(uint[] memory _arr) public {}

    // same goes for array as output
    uint[] public arr;

    // return entire array
    function arrayOutput() public view returns (uint[] memory) {
        return arr;
    }
}

contract XYZ {
    function someFuncWithManyInputs(
        uint x,
        uint y,
        uint z,
        address a,
        bool b,
        string memory c
    ) public pure returns (uint) {}

    function callFunc() external pure returns (uint) {
        return someFuncWithManyInputs(1, 2, 3, address(0), true, "c");
    }

    function callFuncWithKeyValue() external pure returns (uint) {
        return
            someFuncWithManyInputs({
                a: address(0),
                b: true,
                c: "c",
                x: 1,
                y: 2,
                z: 3
            });
    }
}
