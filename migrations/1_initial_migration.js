var Proposal = artifacts.require("./Proposal.sol");

module.exports = function(deployer) {
  deployer.deploy(Proposal);
};
