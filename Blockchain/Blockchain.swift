//
//  Blockchain.swift
//  Blockchain
//
//  Created by Fareeth Sarthar on 11/22/24.
//
import Foundation


class Blockchain {
    private(set) var chain: [Block] = []

    init() {
        // Create the genesis block
        addBlock(data: "Genesis Block")
    }

    func addBlock(data: String) {
        let previousHash = chain.last?.hash ?? "0000"
        let newBlock = Block(
            index: chain.count,
            timestamp: Date(),
            data: data,
            previousHash: previousHash
        )
        chain.append(newBlock)
    }

    func isValid() -> Bool {
        for i in 1..<chain.count {
            let previousBlock = chain[i - 1]
            let currentBlock = chain[i]

            if currentBlock.previousHash != previousBlock.hash {
                return false
            }

            if currentBlock.hash != currentBlock.hash {
                return false
            }
        }
        return true
    }
}
