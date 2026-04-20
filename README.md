# COSC480: Web3 - Deploying a Smart Contract

This project demonstrates how to deploy a Solidity smart contract to the Ethereum Sepolia test network using Hardhat, Ethers.js, and MetaMask.

### Course Information
**By:** Chenilyn Joy Espineda<br>
**Course:** COSC 480-101<br>
**Instructor:** Dr. Appolo Tankeh

<br>

---

## 💻 Tech Stack
* Solidity
* Hardhat
* Ethers.js
* MetaMask
* Alchemy API
* Sepolia Test Network
* Etherscan

<br>

---

## 🛠️ Setup Steps

### Step 1: Alchemy Setup
The Alchemy app will provide the API connection your project will use to communicate with the Sepolia test network.
* Go to the Alchemy website and create an account: [https://www.alchemy.com/](https://www.alchemy.com/)
* After signing in, create a new app (e.g., `COSC480: Web3 Contract`)
* Select `Ethereum` as the chain
* Select `Ethereum Sepolia` as the network

<br>

### Step 2: MetaMask Setup
The MetaMask wallet is needed to send blockchain transactions and pay gas fees when deploying and interacting with the smart contract.
* Go to the MetaMask website and download it as a browser extension: [https://metamask.io/](https://metamask.io/)
* After installation, sign in and create a new wallet (e.g. `COSC480`)
* Open `Menu → Networks`
* Turn on `Show test networks`
* Return to the main screen and open the network dropdown `All popular networks`
* Go to `Custom` and select `Sepolia` from the list of networks

<br>

### Step 3: Get Test ETH from a Faucet
Test ETH acts as the currency added to your MetaMask wallet and is used to pay gas fees for deploying and interacting with smart contracts on the Sepolia network.
* In MetaMask, go to `Accounts → Account Menu → Addresses`
* Copy the address for `Ethereum`
* Go to Google Cloud Web3 Faucet: [https://cloud.google.com/application/web3/faucet/ethereum/sepolia](https://cloud.google.com/application/web3/faucet/ethereum/sepolia)
* Select `Ethereum Sepolia` as the network
* Paste your wallet address
* Click `Get 0.05 Sepolia ETH`
* After requesting, check MetaMask to confirm that the wallet received about `0.05 SepoliaETH`. This confirms the wallet is funded and ready for deployment.

<br>

### Step 4: Clone this Repository
Run the following to download the project from GitHub to your local machine:
```bash
git clone https://github.com/chlyn/COSC480_Web3_Contract.git
cd COSC480_Web3_Contract
```

<br>

### Step 5: Install
Run the following to install all required packages needed to run this project:
```bash
npm install
```

<br>

### Step 6: Environment Variables (.env Setup)
Create a `.env` file in the root of the project and add the following variables:
```bash
API_URL=your_alchemy_endpoint_url
PRIVATE_KEY=your_metamask_private_key
```

To find these values:
* `API_URL` = In your Alchemy app dashboard, make sure `Ethereum Sepolia` is selected as the network, then copy the `Endpoint URL`
* `PRIVATE_KEY` = In your MetaMask account, go to `Accounts → Account Menu → Account Details → Private Keys → Enter your password` and copy the private key for `Ethereum`

<br>

### Step 7: Compile Contract
Compile the Solidity smart contract into bytecode for deployment
```bash
npx hardhat compile
```

<br>

### Step 8: Deploy Contract
Deploy the smart contract to the Sepolia network
```bash
npx hardhat run scripts/deploy.js --network sepolia
```
* The terminal will output a unique contract address (e.g., 0x8...)
* This address will be used to view the deployed contract on Sepolia Etherscan

<br>

### Step 9: View Contract on Etherscan
View and verify the deployed smart contract on the Sepolia blockchain.
* Go to the Etherscan website: [https://sepolia.etherscan.io/](https://sepolia.etherscan.io/)
* Paste your contract address into the search bar

After searching, your contract page should appear similar to the screenshot below, displaying the contract address, transactions, and details of the deployment:
<img width="1344" height="866" alt="Screenshot 2026-04-14 at 2 13 51 PM" src="https://github.com/user-attachments/assets/6c0d7774-3c31-4bb4-8e4e-e38aa6829578" />

<br>

### Step 10: Verify and Publish Contract (Optional)
Verify and publish the smart contract on Etherscan so the source code is publicly visible.
* In Etherscan, go to the `Contract` tab
* Click `Verify and Publish`
* Paste your contract address
* Select `Solidity (Single file)` as the compiler type
* Choose the correct compiler version (e.g., 0.8.20)
* Select the appropriate license type (e.g., MIT)
* Click `Continue`
* Copy and paste your contract code from `Web3.sol`
* Set Optimization to No (or match your Hardhat config)
* Select the appropriate EVM version (e.g. `Paris`)
* After filling out everything, click `Verify and Publish`

<br>

After publishing, the contract page should display a green checkmark indicating successful verification, along with the full contract source code, compiler details, and additional contract information
<img width="1074" height="669" alt="Screenshot 2026-04-14 at 2 32 44 PM" src="https://github.com/user-attachments/assets/689972a8-bf0a-4ff9-baff-bebc9b5f3ecc" />

<br>

---

## ⭐️ Interacting with the Smart Contract (Optional)
After deploying and verifying the contract, you can interact with it directly through Etherscan to test its functionality.

<br>

### Step 1: Write to Contract
* Go to the `Write Contract` tab
* Click `Connect Wallet`
* Select `MetaMask`
* Write a message
* Click `Write`
* Confirm the transaction in MetaMask

<br>

### Step 2: Read from Contract
* Go to the `Read Contract` tab
* View the returned value from the blockchain

After interacting with the contract, the transaction will appear on the Etherscan dashboard, showing the transaction hash, status, and details of the contract interaction.
<img width="1470" height="956" alt="Screenshot 2026-04-14 at 2 42 30 PM" src="https://github.com/user-attachments/assets/2be5bf39-e285-4db6-8a92-448af3c114fb" />

<br>

---




