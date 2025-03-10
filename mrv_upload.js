// MRV Upload Script Example for Filecoin / IPFS
console.log('This is a demo file for MRV data upload module.');
import { Web3Storage, getFilesFromPath } from 'web3.storage';
import * as dotenv from 'dotenv';
dotenv.config();

function getAccessToken() {
  return process.env.WEB3STORAGE_TOKEN;
}

async function storeFiles(filePath) {
  const storage = new Web3Storage({ token: getAccessToken() });
  const files = await getFilesFromPath(filePath);
  const cid = await storage.put(files);
  console.log('✅ Stored files with CID:', cid);
  return cid;
}

// Example usage:
storeFiles('./data/mrv_report.json');
