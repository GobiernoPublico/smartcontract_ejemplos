
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract TokenGPORG is ERC20 {
    constructor() ERC20("GobiernoPublico.org Token", "GPORG") {
        _mint(msg.sender, 1000000 * 10 ** decimals());
    }
}
