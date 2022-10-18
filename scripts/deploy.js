const hre = require("hardhat");

async function main() {

    const Eshterak = await hre.ethers.getContractFactory("Eshterak");
    const eshterak = await Eshterak.deploy();

    await eshterak.deployed();

    console.log(
        `deployed to ${eshterak.address}`
    );
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
    console.error(error);
    process.exitCode = 1;
});

//0x5FbDB2315678afecb367f032d93F642f64180aa3
