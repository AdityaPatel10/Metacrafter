# Create a Token

This project is based on solidity. The "Create a Token" project is a simple smart contract for managing a custom token on the Ethereum blockchain. It enables token creation and destruction while tracking balances for different addresses.

## Description

The "Create a Token" project provides a comprehensive solution for deploying and managing a custom token on the Ethereum blockchain. This smart contract allows users to mint new tokens, effectively increasing the total supply, and burn existing tokens, reducing the total supply. The contract keeps a precise record of each address's token balance, ensuring transparency and accuracy in token distribution. Designed with simplicity and functionality in mind, the project enables easy integration of token-based features into decentralized applications (dApps). Whether you're looking to create a new cryptocurrency, implement a rewards system, or launch an initial coin offering (ICO), this project provides the essential tools to manage your token efficiently. Its straightforward approach makes it accessible for developers of all levels, offering a robust foundation for building more complex token-based systems in the future.

## Getting Started

### Executing program

Using Remix to Deploy My Project
1. Open Remix IDE: Navigate to [Remix IDE](https://remix.ethereum.org/) in your web browser.

2. Create a New File: In the file explorer panel on the left, click the "+" button to create a new file. Name the file MyToken.sol.

3. Copy and Paste the Contract Code: Copy the smart contract code provided and paste it into MyToken.sol.
```
// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {

    // public variables
    string public tokenName = "ADITYA";
    string public tokenAbbrv = "ADI";
    uint public totalSupply = 0;

    // mapping variable
    mapping (address => uint) public balances;

    // mint function
    function mint (address _address, uint _value) public {
        totalSupply += _value;
        balances[_address] += _value;
    }

    // burn function
    function burn (address _address, uint _value) public {
        if (balances[_address] >= _value){
            totalSupply -= _value;
            balances[_address] -= _value;
        }
    }
}
```
4. Compile the Contract: Click on the "Solidity Compiler" tab on the left sidebar Select the compiler version 0.8.18. Click the "Compile MyToken.sol" button.

5. Deploy the Contract:Click on the "Deploy & Run Transactions" tab on the left sidebar Click the "Deploy" button.

6. Interact with the Contract: After deployment, your contract will appear in the "Deployed Contracts" section. Expand the contract to see available functions. Use the mint function to create new tokens by specifying an address and amount and Use the burn function to destroy tokens by specifying an address and amount (make sure the address has enough tokens to burn).

7. Test the Contract: Use the "balances" mapping to check the token balance of any address and Verify that the totalSupply variable updates correctly when minting and burning tokens.

By following these steps, you'll successfully deploy and interact with your custom token contract using Remix IDE.

## Author

Aditya Patel
[aditya97556@gmail.com]