// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract FoodToken is ERC20 {
    constructor(address _adminAddress) ERC20("Food Token", "FOOD") {
        _mint(_adminAddress, 200000 * 10 ** decimals());
    }
}