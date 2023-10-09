// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Test} from "@forge-std/Test.sol";

import {ERC20Mock} from "@contracts/mock/tokens/ERC20Mock.sol";

contract ERC20MockTest is Test {
    address constant SOME_ADDR = 0x0000000000000000000000000000000000000001;

    ERC20Mock public token;

    function setUp() public {
        token = new ERC20Mock("Mock", "Mock", 18);
    }

    function test_Decimals() public {
        assertEq(token.decimals(), 18);
    }

    function test_Mint() public {
        assertEq(token.balanceOf(SOME_ADDR), 0);

        token.mint(SOME_ADDR, 100);

        assertEq(token.balanceOf(SOME_ADDR), 100);
    }

    function test_Burn() public {
        assertEq(token.balanceOf(SOME_ADDR), 0);

        token.mint(SOME_ADDR, 100);
        token.burn(SOME_ADDR, 100);

        assertEq(token.balanceOf(SOME_ADDR), 0);
    }
}
