// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Script} from "@forge-std/Script.sol";
import {console} from "@forge-std/console.sol";

import {ERC20Mock} from "../contracts/mock/tokens/ERC20Mock.sol";

contract Deploy is Script {
    address private OWNER = vm.addr(vm.envUint("PRIVATE_KEY"));

    function deploy() public {
        ERC20Mock mock = new ERC20Mock("Mock", "Mock", 18);

        console.log("Mock address", address(mock));
    }

    function run() public {
        vm.startBroadcast();

        deploy();

        vm.stopBroadcast();
    }
}
