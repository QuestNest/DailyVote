// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

import "@openzeppelin/contracts/access/Ownable.sol";
import "./IProposal.sol";

contract Proposal is IProposal, Ownable {
    struct ProposalStruct {
        string name;
        string[] options;
        bool isOpen;
    }

    mapping(uint => mapping(address => uint)) votes;

    ProposalStruct[] public proposals;

    constructor() Ownable(msg.sender) {}

    function createProposal(
        string memory name,
        string[] memory options
    ) external onlyOwner returns (uint index) {
        ProposalStruct storage newProposal = proposals.push();

        newProposal.name = name;
        newProposal.options = options;
        newProposal.isOpen = true;
        return proposals.length - 1;
    }

    function closeProposal(uint proposalId) external override onlyOwner {
        proposals[proposalId].isOpen = false;
    }

    function castVote(uint proposalId, uint optionId) external override {
        votes[proposalId][msg.sender] = optionId;
    }
}
