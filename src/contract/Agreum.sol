pragma solidity ^0.5.0;

import "./ERC20.sol";
import "./ERC20Detailed.sol";
import "./ERC20Burnable.sol";

/**
 * @title Agreum
 * @dev Very simple ERC20 Token example, where all tokens are pre-assigned to the creator.
 * Note they can later distribute these tokens as they wish using `transfer` and other
 * `ERC20` functions.
 */
contract Agreum is ERC20, ERC20Detailed, ERC20Burnable {

    /**
     * @dev Constructor that gives msg.sender all of existing tokens.
     */
    constructor () public ERC20Detailed("Agreum", "AGR", 18) {
        _mint(msg.sender, 1000000000 * (10 ** uint256(decimals())));
    }
}
