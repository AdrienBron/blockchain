const { buildModule } = require("@nomicfoundation/hardhat-ignition/modules");

const TokenModule = buildModule("TokenModule", (m) => {
  const Token = m.contract("TokenERC20");

  return { Token };
});

module.exports = TokenModule;