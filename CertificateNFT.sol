// contracts/CertificateNFT.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract CertificateNFT is ERC721URIStorage, Ownable {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    constructor() ERC721("CertificateNFT", "CNFT") {}

    function award(address student, string memory tokenURI)
        public
        onlyOwner
    {
        _tokenIds.increment();

        uint256 newItemId = _tokenIds.current();
        _mint(student, newItemId);
        _setTokenURI(newItemId, tokenURI);
    }

    function awardMany(address[] memory students, string memory tokenURI)
        public
        onlyOwner
    {
        require(students.length > 0); // in case passes an empty array
        uint256 newItemId;
        for (uint i = 0; i < students.length; i ++) {
            _tokenIds.increment();
            newItemId = _tokenIds.current();
            _mint(students[i], newItemId);
            _setTokenURI(newItemId, tokenURI);
        }
    }

    function _transfer(
        address from,
        address to,
        uint256 tokenId
    ) override internal {
        require(false, "Certificate cannot be transfered");
    }
    
}