//
//  Model.swift
//  Tarot
//
//  Created by Rudi Basiran on 29/7/18.
//  Copyright © 2018 RMIT. All rights reserved.
//

import Foundation

class Model {
    let majorArcanaCards:[String:String] = [
        "Fool" : "Go forth with faith.",
        "Magician" : "Magic is on your side.",
        "HighPriestess" : "A powerful women will be part of the solution.",
        "Empress" : "Plant the seed and it will grow.",
        "Emperor" : "You will need to be well organised.",
        "Heirophant" : "A powerful man will be part of the solution.",
        "Lovers" : "You cannot do this alone.",
        "Chariot" : "You need to find the right vehicle to achieve the outcome.",
        "Justice" : "If you have been fair in your dealings with others, you have nothing to be concerned about. If you have not been fair in your dealings with other, make restitution before proceeding.",
        "Hermit" : "This is not the time to take action, but more study and reflection is required.",
        "WheelOfFortune" : "The outcome has already been decided.",
        "Strength" : "You have the skills and abilities required to pull this off.",
        "HangedMan" : "Try looking at the situation from another perspective.",
        "Death" : "You must finish something first, before you can move forward.",
        "Temperance" : "A balanced approach is need for a successful outcome.",
        "Devil" : "The devil is in the details, make sure you have made every effort for success.",
        "Tower" : "Something unexpected will happen that will resolve the situation.",
        "Star" : "Look to the stars, you will find your answer.",
        "Moon" : "The answer is not known at this time, please ask again later.",
        "Sun" : "Relax, it is done.",
        "Judgement" : "Be discerning and consult others before making a decision.",
        "World" : "The result you are looking for has already happened.",
    ];
    
    var currentCardImageName = ""
    
    func respond () -> String {
        let response = Int(arc4random_uniform(UInt32(majorArcanaCards.count)))
        
        let message = Array (majorArcanaCards.values) [response]
        currentCardImageName = Array (majorArcanaCards.keys) [response]
        return message
    }
    
    
}
