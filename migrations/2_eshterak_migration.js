const Eshterak = artifacts.require("Eshterak");

module.exports = function (deployer) {
  deployer.deploy(Eshterak, "Moshtarek1", "Mosh", "https://github.com/");
};

//0x5842c0824C833A9D420BB425545973f0a76997D1

//.addPlan("30Days", "https://", time2 ,600, {from: accounts[0]})