//
//  ViewController.swift
//  Tarot
//
//  Created by Rudi Basiran on 23/7/18.
//  Copyright © 2018 RMIT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var model:Model = Model()
    
    @IBOutlet weak var cardDescription: UILabel!
    
    @IBAction func respond(_ sender: Any) {
        
        cardDescription.text = model.respond()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cardDescription.text = "Welcome to the Oracle"
    }

   

}

