//
//  FactoryProtocol.swift
//  DesignPatternsInSwift
//
//  Created by Mikiya Abe on 2020/01/06.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

protocol FactoryProtocol {
    func createProduct(owner: String) -> FactoryMethodProduct
    mutating func registerProduct(product: FactoryMethodProduct)
}

extension FactoryProtocol {
    mutating func create(owner: String) -> FactoryMethodProduct {
        let product = self.createProduct(owner: owner)
        self.registerProduct(product: product)
        return product
    }
}
