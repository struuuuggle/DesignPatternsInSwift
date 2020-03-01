//
//  Decorator.swift
//  DesignPatternsInSwift
//
//  Created by Mikiya Abe on 2020/03/01.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

import Foundation

enum Decorator {
    static func main() {
        // "Hello, world."を飾りなしで表示するためのDisplay
        let b1: DecoratorDisplay = StringDisplay(string: "Hello, world.")
        
        // b1に対して、"#"の文字で左右に飾り付けをしたもの
        let b2: DecoratorDisplay = SideBorder(display: b1, boarderCharacter: "#")
        
        // b2に対して、全体の飾り枠をつけたもの
        let b3: DecoratorDisplay = FullBorder(display: b2)
        
        // "LOOK AT ME"に対して、何重もの飾り枠をつけたもの
        let b4: DecoratorDisplay =
            SideBorder(
                display: FullBorder(
                    display: FullBorder(
                        display: SideBorder(
                            display: FullBorder(
                                display: StringDisplay(string: "LOOK AT ME")
                            ),
                            boarderCharacter: "*"
                        )
                    )
                ),
                boarderCharacter: "/"
        )
        
        /**
         期待値:
         Hello, world.
         */
        b1.show()
        
        /**
         期待値:
         #Hello, world.#
         */
        b2.show()
        
        /**
         期待値:
         +---------------+
         |#Hello, world.#|
         +---------------+
         */
        b3.show()
        
        /**
         期待値:
         /+----------------+/
         /|+--------------+|/
         /||*+----------+*||/
         /||*|LOOK AT ME|*||/
         /||*+----------+*||/
         /|+--------------+|/
         /+----------------+/
         */
        b4.show()
    }
}
