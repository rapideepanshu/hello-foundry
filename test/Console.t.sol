// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";

contract Console is Test {
    function testLogSomething() public {
        console.log("Here is me");

        int x = -1;
        console.logInt(x);
    }
}
