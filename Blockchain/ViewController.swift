//
//  ViewController.swift
//  Blockchain
//
//  Created by Fareeth Sarthar on 11/22/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let blockchain = Blockchain()
        blockchain.addBlock(data: "Block 1 Data")
        blockchain.addBlock(data: "Block 2 Data")

        print("Blockchain:")
        for block in blockchain.chain {
            print("""
            --------------------
            Index: \(block.index)
            Timestamp: \(block.timestamp)
            Data: \(block.data)
            Previous Hash: \(block.previousHash)
            Hash: \(block.hash)
            """)
        }

        print("\nBlockchain Validity: \(blockchain.isValid() ? "Valid" : "Invalid")")

    }


}

