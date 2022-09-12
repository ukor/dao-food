// contracts/Box.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/access/Ownable.sol";

contract FoodTruck is Ownable {
  uint256 private proposalId;

  // Emitted when the stored value changes
  event ProposalPassed(uint256 _proposalId);

  // Stores a new value in the contract
  function createFoodTruck(uint256 _proposalId) public onlyOwner {
    proposalId = _proposalId;
    emit ProposalPassed(_proposalId);
  }

  // Reads the last ID of the proposal that passed
  function retrieve() public view returns (uint256) {
    return proposalId;
  }
}