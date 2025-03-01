// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "@coti-io/coti-contracts/contracts/utils/mpc/MpcCore.sol";

contract Counter {
    utUint64 private _sum;

    constructor() {
        gtUint64 sum_ = MpcCore.setPublic64(0);

        _sum = MpcCore.offBoardCombined(sum_, msg.sender);
    }

    function sum() public view returns (ctUint64) {
        return _sum.userCiphertext;
    }

    function add(itUint64 calldata value) external {
        gtUint64 value_ = MpcCore.validateCiphertext(value);
        gtUint64 sum_ = MpcCore.onBoard(_sum.ciphertext);

        sum_ = MpcCore.add(sum_, value_);

        _sum = MpcCore.offBoardCombined(sum_, msg.sender);
    }
}
