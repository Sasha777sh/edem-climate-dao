# EDEM Climate DAO

This repository includes:
- A sample MRV data upload module.
- A smart contract for Climate DAO governance and MRV report tracking.

## How it works
1. MRV reports are uploaded and stored on IPFS/Filecoin.
2. The DAO smart contract records and verifies reports with CIDs.

This is an MVP demonstration for grant purposes.
4. Place your MRV report JSON file in `./data/mrv_report.json`
5. Run `node mrv_upload.js`

## Expected Output
- A CID (Content Identifier) will be returned and logged.

## ClimateDAO Smart Contract Deployment

### Prerequisites
- MetaMask wallet
- Remix IDE (https://remix.ethereum.org)

### Steps:
1. Copy the ClimateDAO Solidity code into Remix.
2. Compile using Solidity ^0.8.0.
3. Deploy using Injected Web3 (connect MetaMask to Filecoin Calibration Testnet or FVM testnet).
4. Once deployed, call `submitReport` with a CID from IPFS.
5. Verify reports via `getReport(index)` and check `totalReports()`.
 
