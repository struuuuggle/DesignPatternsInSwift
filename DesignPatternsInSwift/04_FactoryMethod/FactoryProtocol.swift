//
//  FactoryProtocol.swift
//  DesignPatternsInSwift
//
//  Created by Mikiya Abe on 2020/01/06.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

protocol FactoryProtocol {
    func createProduct(owner: String) -> Product
    mutating func registerProduct(product: Product)
}

extension FactoryProtocol {
    mutating func create(owner: String) -> Product {
        let product = self.createProduct(owner: owner)
        self.registerProduct(product: product)
        return product
    }
}
