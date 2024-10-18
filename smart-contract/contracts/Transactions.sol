// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract Transactions {
    uint256 public transactionsCount;

    event Transfer(address indexed from, address indexed receiver, uint256 amount, string message, uint256 timestamp, string keyword);

    struct TransferStruct{
        address sender;
        address receiver;
        uint256 amount;
        string message;
        uint256 timestamp;
        string keyword;
    }

    mapping(uint256 => TransferStruct) public transactions;

    function addToBlockChain(address payable receiver, uint256 amount, string memory message, string memory keyword) public {
        transactionsCount += 1;
        transactions[transactionsCount] = TransferStruct(
            msg.sender,
            receiver,
            amount,
            message,
            block.timestamp,
            keyword
        );

        emit Transfer(
            msg.sender,
            receiver,
            amount,
            message,
            block.timestamp,
            keyword
        );
    }

    function getAllTransactions() public view returns (TransferStruct[] memory){
        TransferStruct[] memory allTransactions = new TransferStruct[](transactionsCount);
        for (uint256 i = 0; i < transactionsCount; i++) {
            TransferStruct storage item = transactions[i];
            allTransactions[i] = item;
        }

        return allTransactions;
    }

    function getTransactionsCount() public view returns (uint256){
        return transactionsCount;
    }

}