# CertificateNFT

### Deploy

- go to [remix](https://remix.ethereum.org/) and add CertificateNFT.sol
- compile the contract (with version > 0.8.1)
- connect to metamask and deploy the contract to live network, e.g. [rinkeby](https://rinkeby.etherscan.io/address/0xe386e9df0b1b2362c4bbf8ff5b5c6bdfe3c5cdf0)
- use Etherscan Plugin to verify the code

### Generate your JSON link:
(only supports one json file for each NFT series)
- go to [pinata ipfs](https://www.pinata.cloud/) 
- follow the steps here to create pinata image url and then pinata json url for nft URI[pinata json](https://ethereum.org/fr/developers/tutorials/how-to-mint-an-nft/#config-meta)

### Mint NFT
- load your NFT contract on remix
- prepare your students arrays in the format of `["0xajise352jif", "0x89sko4kt", ....]`
- prepare your json uri
- call `award` or `awardMany` function for distributing the nfts
