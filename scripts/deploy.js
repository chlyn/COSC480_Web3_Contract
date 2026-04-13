async function main() {
    const Web3 = await ethers.getContractFactory("Web3");

    // Start deployment, returning a promise that resolves to a contract object
    const web3 = await Web3.deploy("Hello World!");

    await web3.deployed();

    console.log("Contract deployed to address:", web3.address);
}

main()
    .then(() => process.exit(0))
    .catch(error => {
        console.error(error);
        process.exit(1);
    });
