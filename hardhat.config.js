/** @type import('hardhat/config').HardhatUserConfig */
require("@nomiclabs/hardhat-waffle");
require("@nomiclabs/hardhat-ethers");
require("@nomiclabs/hardhat-etherscan");
require('dotenv').config();
const fs = require('fs');
const mnemonic = fs.readFileSync(".secret").toString().trim();

module.exports = {
  solidity: "0.8.12",
  settings: { optimizer: { enabled: true, runs: 200 } },
  networks: {
    matic: {
      url: "https://rpc-mumbai.maticvigil.com",
      accounts: {
        mnemonic: mnemonic,
        path: "m/44'/60'/0'/0",
        initialIndex: 0,
        count: 20,
        passphrase: "",
      },
    },
  },
  etherscan: {
    apiKey: process.env.POLYGONSCAN_API_KEY,
  },
};


// local 0x5FbDB2315678afecb367f032d93F642f64180aa3
// 0xCf7Ed3AccA5a467e9e704C703E8D87F634fB0Fc9
// mumbai 0x50D0adedE7C93C4D71065a0245c111E6fF073829