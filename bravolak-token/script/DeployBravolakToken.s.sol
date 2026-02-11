//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Script.sol";
import "../src/BravolakToken.sol";

contract DeployBravolakToken is Script {
    function run() external {
        vm.startBroadcast();
        new BravolakToken(
            "Bravolak Token",
            "BVK",
            1_000_000
        );
        vm.stopBroadcast();
    }
}