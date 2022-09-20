const hre = require("hardhat");

async function main() {

    const Eshterak = await hre.ethers.getContractFactory("Eshterak");
    const eshterak = await Eshterak.deploy("Moshtarek1", "Mosh", "https://github.com/");

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
