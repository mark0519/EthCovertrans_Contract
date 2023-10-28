// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

/**
 * @title Expubkey
 * @dev Exchange and Show Public Keys for EthCovertrans
 */
contract Expubkey {
// Eg. Pubkey: 0x048124fae9bb3686c7ed2a6121dc7fa26cba2d7145457523a951a6264f0e98f6ca2eb0ae0023a6bde511db3f625e607b30bb02d0257f39e2950cd46b3f868a7df6
    
    // 公钥库
    string[] private  storedData;

    // 返回随机数uint
    function random() private view returns (uint) {
        return uint(keccak256(abi.encodePacked(block.difficulty, block.timestamp, block.number)));
    }

    // function checkPsk

    function saveData(string memory data) public {
        require( bytes(data).length == 132 ,"The length of the Public key must be 132 and needs to start with 0x04");

        storedData.push(data);
    }

    function showData() public view returns (string[] memory) {
        return storedData;
    }


}