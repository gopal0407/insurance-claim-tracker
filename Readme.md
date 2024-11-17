
# InsuranceClaimTracker

## Introduction
The **InsuranceClaimTracker** is a simple smart contract deployed on the Aptos blockchain. This contract enables the creation and approval of insurance claims in a decentralized and secure manner. The contract allows policyholders to file insurance claims and lets the insurance provider approve those claims by transferring the appropriate funds.

## Vision
The main vision of this project is to streamline the insurance claim process by utilizing blockchain technology. By using Aptos, the contract ensures:
- Transparency: All claims and approvals are recorded on the blockchain.
- Security: The funds involved in the claim are securely transferred between the provider and the claimant.
- Decentralization: The contract operates in a decentralized manner, minimizing the reliance on centralized intermediaries.

## Features
- **Create Claim**: Allows policyholders to create insurance claims by specifying the claim amount.
- **Approve Claim**: Allows insurance providers to approve claims and transfer the corresponding funds to the claimant.
- **Blockchain-Backed**: Every action (creating and approving claims) is recorded on the Aptos blockchain, ensuring transparency and accountability.

## Future Goals
- **Multi-Claim Support**: Extend the contract to support multiple claims per claimant and allow providers to view and manage all claims in a more structured way.
- **Automated Claim Processing**: Integrate with external oracles for automatic claim approval based on certain conditions (e.g., weather reports, flight delays).
- **Claim Status Dashboard**: Build a user interface to display claim statuses and historical data, enabling better user interaction with the smart contract.

## Deployed Address
- The InsuranceClaimTracker contract is deployed at the following address on the **Aptos Testnet**:  
  `Tx Hash 0x1e1973fcc04f893386dd8e3096bdaeb7f5f08e0bd7da5b023a6a891014d39ebd`

## Usage Instructions
1. **Create Claim**:
   - To create a claim, call the `create_claim` function, providing the claim amount as an argument.
   
2. **Approve Claim**:
   - To approve a claim, the insurance provider can call the `approve_claim` function, passing the address of the claimant.

## Getting Started
- Clone or download the repository to your local machine.
- Set up an Aptos wallet to interact with the contract.
- Use tools like Remix IDE or the Aptos SDK to deploy and interact with the contract.

## Conclusion
The **InsuranceClaimTracker** smart contract enables secure and transparent insurance claim management on the Aptos blockchain. 
It allows users to create and approve claims efficiently, with plans for future enhancements.

## License
This project is licensed under the MIT License.
