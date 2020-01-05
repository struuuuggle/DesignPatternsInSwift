//
//  AbstractDisplay.swift
//  DesignPatternsInSwift
//
//  Created by Mikiya Abe on 2020/01/06.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

import Foundation

protocol AbstractDisplay {
    func open()
    func print()
    func close()
}

extension AbstractDisplay {
    func display() {
        self.open()
        (0..<5).forEach { _ in
            self.print()
        }
        self.close()
    }
}
