// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Script} from "@forge-std/Script.sol";
import {console} from "@forge-std/console.sol";

import {ERC20Mock} from "@contracts/mock/tokens/ERC20Mock.sol";

contract Deploy is Script {
    uint256 private PRIVATE_KEY = vm.envUint("PRIVATE_KEY");
    address private DEPLOYER = vm.addr(PRIVATE_KEY);

    function deploy() public {
        ERC20Mock mock = new ERC20Mock("Mock", "Mock", 18);

        console.log("Mock address", address(mock));
    }

    function run() public {
        vm.startBroadcast(PRIVATE_KEY);

        deploy();

        vm.stopBroadcast();
    }
}

// Use PRIVATE_KEY from anvil logs

// source .env && anvil
// source .env && forge script scripts/deploy.s.sol --fork-url http://localhost:8545 --broadcast
