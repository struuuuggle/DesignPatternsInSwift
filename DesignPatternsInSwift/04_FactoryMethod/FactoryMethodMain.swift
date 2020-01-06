//
//  FactoryMethodMain.swift
//  DesignPatternsInSwift
//
//  Created by Mikiya Abe on 2020/01/06.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

struct FactoryMethodMain {
    static func main() {
        var factory = IDCardFactory()
        let card1 = factory.create(owner: "Anny")
        let card2 = factory.create(owner: "Bob")
        let card3 = factory.create(owner: "Cathy")
        card1.use()
        card2.use()
        card3.use()
    }
}
