//
//  EmojiMemoryGame.swift
//  Memory-game
//
//  Created by Ali Ahmad on 15/06/2021.
//  Copyright © 2021 Ali Ahmed. All rights reserved.
//

import SwiftUI

class EmojiMemoryGame {
    
    // model pointer
    
    var model : MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
        
    
    static func createMemoryGame() -> MemoryGame<String>{
        let emojis = ["🥳","🤖","🤡"].shuffled()
        
        return MemoryGame<String>(numberOfPairs: emojis.count, cardContentFactory: { pairIndex in
        
            return emojis[pairIndex]
        })
    }
    
    
    
    
    // MARK: - Access to the model
    
    var cards : Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - User Intents
    
    func choose(card:MemoryGame<String>.Card){
        
        model.choose(card: card)
    }
    
    
}
