async function main() {

    const SimpleBank = await ethers.getContractFactory("SimpleBank");

    const simpleBank = await SimpleBank.deploy();

    await simpleBank.deployed();

    console.log("Contract deployed to address:", simpleBank.address);
}

main()
    .then(() => process.exit(0))
    .catch(error => {
        console.error(error);
        process.exit(1);
    });