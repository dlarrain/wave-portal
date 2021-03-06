// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.9;

import "forge-std/console.sol";

contract WavePortal {
  uint256 totalWaves;

  constructor() {
    console.log("First contract constructor");
  }

  function wave() public {
    totalWaves += 1;
    console.log(
      "A new octopus has waved you at %s. Welcome %s!",
      block.timestamp,
      msg.sender
    );
  }

  function getTotalWaves() public view returns (uint256) {
    console.log(
      "We have %d total waves!",
      totalWaves
    );
    return totalWaves;
  }
}
