//
//  IDCardFactory.swift
//  DesignPatternsInSwift
//
//  Created by Mikiya Abe on 2020/01/06.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

extension FactoryMethod {
    struct IDCardFactory: FactoryProtocol {
        var owners = [String]()
        
        func createProduct(owner: String) -> FactoryMethodProduct {
            return IDCard(owner: owner)
        }
        
        mutating func registerProduct(product: FactoryMethodProduct) {
            // Product型のproductをIDCard型にダウンキャスト
            self.owners.append((product as! IDCard).getOwner())
        }
        
        func getOwners() -> [String] {
            return self.owners
        }
    }    
}
