// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import {Auction} from "../src/Time.sol";

contract TestTime is Test {
    Auction public auction;
    uint256 public startAt;

    // vm.warp - set block.timestamp to future timestamp
    // vm.roll - set block number
    // skip - increment current timestamp
    // rewind - decrement current timestamp

    function setUp() public {
        auction = new Auction();
        startAt = block.timestamp;
    }

    function testBidFailsBeforeStart() public {
        vm.expectRevert(bytes("cannot bid"));
        auction.bid();
    }

    function testBid() public {
        vm.warp(startAt + 1 days);
        auction.bid();
    }

    function testBidFailsAfterEnd() public {
        vm.expectRevert(bytes("cannot bid"));
        vm.warp(startAt + 3 days);
        auction.bid();
    }

    function testTimestamp() public {
        uint t = block.timestamp;

        skip(100);
        assertEq(block.timestamp, t + 100);

        rewind(10);
        assertEq(block.timestamp, t + 100 - 10);
    }

    function testBlockNumber() public {
        vm.roll(999);
        assertEq(block.number, 999);
    }
}
