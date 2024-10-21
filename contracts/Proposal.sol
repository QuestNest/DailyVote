// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

import "@openzeppelin/contracts/access/Ownable.sol";
import "./IProposal.sol";

contract Proposal is IProposal, Ownable {
    IProposal.ProposalStruct[] public proposals;

    constructor() Ownable(msg.sender) {}

    function newProposal(
        string memory name,
        string[] memory options
    ) external override onlyOwner returns (uint index) {}

    function closeProposal(uint proposalId) external override onlyOwner {}

    function castVote(uint proposalId, uint optionId) external override {}
}
