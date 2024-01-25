// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract AITUYersayan is ERC20 {
    constructor(string memory name, string memory symbol) ERC20(name, symbol) {
        _mint(_msgSender(), 2000 * 10**decimals());
    }

    function transactionSender() public view returns (address) {
        return _msgSender();
    }

    function transactionReceiver() public view returns (address) {
        return address(this);
    }

    function _toDateString(uint256 timestamp) internal pure returns (string memory) {
        return timestamp == 0 ? "" : _timestampToString(timestamp);
    }

    function _timestampToString(uint256 timestamp) internal pure returns (string memory) {
        return string(abi.encodePacked(new bytes(32), timestamp));
    }
}

      