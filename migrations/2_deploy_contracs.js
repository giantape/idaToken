const IdaToken = artifacts.require("./IdaToken.sol");

module.exports = function (deployer) {
  deployer.deploy(IdaToken, 1000000);
};

