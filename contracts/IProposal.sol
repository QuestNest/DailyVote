// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

interface IProposal {
    /*
     @notice Create a new public proposal.
     @param name Proposal's name - "What is the best cake?"
     @param options Proposal's options - ["Black Forest", "Chocolate Cake"]
     @return index The index of the newly created proposal
     @dev This function should be callable only by the contract owner.
     */
    function createProposal(
        string memory name,
        string[] memory options
    ) external returns (uint index);

    /*
     @notice Close a proposal, stopping further voting.
     @param proposalId The index of the proposal to close
     @dev This function should be callable only by the contract owner.
     */
    function closeProposal(uint proposalId) external;

    /*
     @notice Vote for an option in a proposal.
     @param proposalId The index of the proposal
     @param optionId The index of the option being voted for
     */
    function castVote(uint proposalId, uint optionId) external;
}
