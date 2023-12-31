// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.18;


import{ Script} from "forge-std/Script.sol";
import {FundMe} from "../src/FundMe.sol";
contract DeployFundMe is Script {
    function run() external{
        vm.startBroadcast();
        new FundMe(msg.sender);
        vm.stopBroadcast();
    }
}