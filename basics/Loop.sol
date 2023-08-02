// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

// pls don't write unbounded for/while loops - we can hit the gas limit and transactions would fail

contract Loop {
    function loop() public pure {
        for (uint i = 0; i < 10; i++) {
            if (i == 3) {
                // skip to next iteration
                continue;
            }
            if (i == 5 || i == 7) {
                // exit loop
                break;
            }
            // do something
        }

        uint j;

        while (j < 10) {
            // do something
            j++;
        }
    }
}
