Solidity smart-contracts
=====================================

Solidity smart-contracts done by BAUDRY Thibaut and BEAUDET Marc-Antoine as part of Blockchain programming courses at ESILV

Voting smart-contract
----------------
The smart-contract can be found [here](/voting/voting.sol)

Collective decision making in general, and voting in particular represent a core value proposition for the Ethereum blockchain. Voting on blockchain is fully decentralized, with no central authority to trust. 

* The organizer is the one who deploys the contract on the Mainnet or Ropsten.
* Voters are everyone that have acces to the adress of the smart-contract.
* Voters can vote only one time.
* Propositions of the vote are decided by the organizer when he deploys the smart-contract.



Tokens & ICO smart-contract
----------------
The smart-contract can be found [here](/ico/TheTokenYouNeed.sol)

We deployed the contract and it is at this [link](https://ropsten.etherscan.io/token/0x61fb05546e1d29db9fb90f8aac8492f3783380fa)

TheTokenYouNeed is the token associated with TheStudentYouNeed, a start-up that connects skillful students to SME.

We do an ICO and our tokens are equivalent to shares purchased, they sell a right of ownership.

When we deploy our smart-contract, it creates a ERC 20 Token with:
* A total supply of 1000000000000000000000 wei
* the name of the token
* number of decimals
* the symbol
* how many tokens you get with one ether

*Note:* If you want to deploy your own token using our smart-contract, you can modify the code here  ![img](https://image.noelshack.com/fichiers/2018/12/3/1521651198-create-your-own-erc20-token.png)

Notary act & Proof of Existence
----------------
The smart-contract can be found [here](/proof-of-existence/proof-of-existence.sol)

The smart-contract permits to anonymously and securely store an online distributed proof of existence for any document. The documents are **NOT stored**, so you don't have to worry about your data being accessed by others. 
