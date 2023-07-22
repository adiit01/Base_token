// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts@4.9.2/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts@4.9.2/access/Ownable.sol";

contract Zkevm is ERC721, Ownable {
    constructor() ERC721("Zkevm", "Zkevm") {}

    function safeMint(address to, uint256 tokenId) public onlyOwner {
        _safeMint(to, tokenId);
    }
}
