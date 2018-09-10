//
//  Model.swift
//  Tarot
//
//  Created by Rudi Basiran on 29/7/18.
//  Copyright © 2018 RMIT. All rights reserved.
//

import Foundation

class Model {
    let majorArcanaCards:[String:MajorArcanaCard]
    
    init () {
        majorArcanaCards = MajorArcanaCard.getCardDictionary()
    }
    
    var currentCard:MajorArcanaCard = MajorArcanaCard.fool
    // var currentCardImageName = ""
    
    func respond () -> String {
        let response = Int(arc4random_uniform(UInt32(majorArcanaCards.count)))
        currentCard = Array (majorArcanaCards.values) [response]
        // currentCardImageName = Array (majorArcanaCards.keys) [response]
        return currentCard.interpretation
    }
    
//    func respond () -> (CardImageName:String, CardMessage:String) {
//        let response = Int(arc4random_uniform(UInt32(majorArcanaCards.count)))
//        let CardMessage = Array (majorArcanaCards.values) [response]
//        let CardImageName = Array (majorArcanaCards.keys) [response]
//        currentCardImageName = CardImageName
//        return (CardImageName, CardMessage)
//
//    }
//    func respond () -> String {
//        let response = Int(arc4random_uniform(UInt32(majorArcanaCards.count)))
//        let message = Array (majorArcanaCards.values) [response]
//        currentCardImageName = Array (majorArcanaCards.keys) [response]
//        return message
//    }
//    
//    func respond (cardImageName: inout String, message: inout String){
//        let response = Int(arc4random_uniform(UInt32(majorArcanaCards.count)))
//        message = Array (majorArcanaCards.values) [response]
//        cardImageName = Array (majorArcanaCards.keys) [response]
//        currentCardImageName = Array (majorArcanaCards.keys) [response]
//    }
    
}
