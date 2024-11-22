//
//  Block.swift
//  Blockchain
//
//  Created by Fareeth Sarthar on 11/22/24.
//


import Foundation
import CryptoKit // For hashing

struct Block {
    let index: Int
    let timestamp: Date
    let data: String
    let previousHash: String
    var hash: String {
        let content = "\(index)\(timestamp)\(data)\(previousHash)"
        return SHA256.hash(data: content.data(using: .utf8)!)
            .map { String(format: "%02x", $0) }
            .joined()
    }
}
