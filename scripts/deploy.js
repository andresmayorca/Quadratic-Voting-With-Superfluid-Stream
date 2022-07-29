const hre = require("hardhat");
const { Framework } = require("@superfluid-finance/sdk-core");
require("dotenv").config();

async function main() {
  // Hardhat always runs the compile task when running scripts with its command
  // line interface.
  //
  // If this script is run directly using `node` you may want to call compile
  // manually to make sure everything is compiled
  // await hre.run('compile');

  const sf = await Framework.create({
    chainId: (await provider.getNetwork()).chainId,
    provider
  });

  const signers = await hre.ethers.getSigners();
  // We get the contract to deploy
  const quadratic_voting_with_superfluid_stream = await hre.ethers.getContractFactory("quadratic voting implementation with gitcoin aqueducts");
  //deploy the money router account using the proper host address and the address of the first signer
  const Quadratic_Voting_With_Superfluid_Stream = await Quadratic_Voting_With_Superfluid_Stream.deploy(Owned.address);

  await Quadratic-Voting-With-Superfluid-Stream.deployed();

  console.log("Quadratic Voting With Superfluid Stream deployed to:", Owned.address);
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});