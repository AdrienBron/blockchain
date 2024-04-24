require("@nomicfoundation/hardhat-toolbox");

// The next line is part of the sample project, you don't need it in your
// project. It imports a Hardhat task definition, that can be used for
// testing the frontend.
require("./tasks/faucet");

const INFURA_API_KEY = vars.get("infuraApiKey");
const SEPOLIA_PRIVATE_KEY = vars.get("sepoliaPrivateKey");
const ETHERSCAN_API_KEY = vars.get("etherscanAPIKey");

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.24",
  networks: {
    sepolia: {
      url: `https://sepolia.infura.io/v3/${INFURA_API_KEY}`,
      accounts: [SEPOLIA_PRIVATE_KEY],
    },
  },
  etherscan:{
    apiKey:{
      sepolia:ETHERSCAN_API_KEY
    }
  }
};