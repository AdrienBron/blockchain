const { expect } = require("chai");

describe("On s'apprete a tester le deploiment du token",function() {
    it("should send total to the owner", async function() {
        const[owner] = await ethers.getSigners();

        const BronToken = await ethers.deployContract("BronToken");

        const ownerBalance = await BronToken.balance0f(owner.address);

        expect(await BronToken.totalSupply()).to.equal(ownerBalance);
        
    });
});