//
//  IDCard.swift
//  DesignPatternsInSwift
//
//  Created by Mikiya Abe on 2020/01/06.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

extension FactoryMethod {
    struct IDCard: FactoryMethodProduct {
        let owner: String
        
        init(owner: String) {
            print("\(owner)のカードを作ります。")
            self.owner = owner
        }
        
        func use() {
            print("\(owner)のカードを使います。")
        }
        
        func getOwner() -> String {
            return self.owner
        }
    }    
}
