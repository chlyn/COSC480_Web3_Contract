# COSC480: Web3 - Deploying a Smart Contract

This project demonstrates how to deploy a Solidity smart contract to the Ethereum Sepolia test network using Hardhat, Ethers.js, and MetaMask.

---

## Tech Stack
* Solidity
* Hardhat
* Ethers.js
* MetaMask
* Alchemy API
* Sepolia Test Network

---

## Setup Steps

### Step 1: Alchemy Setup
The Alchemy app will provide the API connection your project will use to communicate with the Sepolia test network.
* Go to the Alchemy website and create an account: [https://www.alchemy.com/](https://www.alchemy.com/)
* After signing in, create a new app (e.g., `COSC480: Web3 Contract`)
* Select `Ethereum` as the chain
* Select `Ethereum Sepolia` as the network

### Step 2: MetaMask Setup
The MetaMask wallet is needed to send blockchain transactions and pay gas fees when deploying and interacting with the smart contract.
* Go to the MetaMask website and download it as a browser extension: [https://metamask.io/](https://metamask.io/)
* After installation, sign in and create a new wallet (e.g. `COSC480`)
* Open `Menu > Networks`
* Turn on `Show test networks`
* Return to the main screen and open the network dropdown `All popular networks`
* Go to `Custom` and select `Sepolia` from the list of networks

### Step 3: Get Test ETH from a Faucet
Test ETH acts as the currency added to your MetaMask wallet and is used to pay gas fees for deploying and interacting with smart contracts on the Sepolia network.
* In MetaMask, go to `Accounts > Account Menu > Addresses`
* Copy the address for `Ethereum`
* Go to Google Cloud Web3 Faucet: [https://cloud.google.com/application/web3/faucet/ethereum/sepolia](https://cloud.google.com/application/web3/faucet/ethereum/sepolia)
* Select `Ethereum Sepolia` as the network
* Paste your wallet address
* Click `Get 0.05 Sepolia ETH`
