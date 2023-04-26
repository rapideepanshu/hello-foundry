// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Counter.sol";

contract CounterTest is Test {
    Counter public counter;

    function setUp() public {
        counter = new Counter();
    }

    function testIncrement() public {
        counter.inc();
        assertEq(counter.get(), 1);
    }

    // If we know that test is going to fail.
    // We have to add Fail in function name so that foundry knows that this test is going to fail
    function testFailDec() public {
        counter.dec();
    }

    // Same as testFailDec
    // We can simulate the above case explicitilly with
    // more specific error
    function testDecUnderFlow() public {
        vm.expectRevert(stdError.arithmeticError);
        counter.dec();
    }

    function testDecrement() public {
        counter.inc();
        counter.inc();
        counter.dec();
        assertEq(counter.get(), 1);
    }
}
