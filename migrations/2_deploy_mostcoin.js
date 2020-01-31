var mostcoin = artifacts.require("./MostCoin.sol");

module.exports = function(deployer) {
    deployer.deploy(mostcoin, {gas: 2000000});
};
