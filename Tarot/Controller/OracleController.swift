//
//  ViewController.swift
//  Tarot
//
//  Created by Rudi Basiran on 23/7/18.
//  Copyright © 2018 RMIT. All rights reserved.
//

import UIKit

class OracleController: UIViewController {
    
    var model:Model = Model()
    
    @IBOutlet weak var cardDescription: UILabel!
    
    @IBOutlet weak var imgCard: UIImageView!
    
    @IBAction func respond(_ sender: Any) {
        
        // cardDescription.text = model.respond()
        // imgCard.image = UIImage (named: model.currentCardImageName)
        
        // var cardImage:String = ""
        // var message:String = ""
        // model.respond(cardImageName: &cardImage, message: &message)
        // cardDescription.text = message
        // imgCard.image = UIImage (named: cardImage)
        
        // let response:(CardImageName:String, CardMessage:String) = model.respond()
        cardDescription.text = model.respond()
        imgCard.image = UIImage (named: model.currentCard.imageName)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cardDescription.text = "Welcome to the Oracle!"
    }

   

}

