//
//  ViewController.swift
//  HelloApp
//  For this week's assignment, you need to submit an app similar to the one we created throughout the lesson. But instead of a "Hello, world" app, I want you to make it a "Hello, kitty" app. The layout will be very similar, but instead of entering your name, you get to enter a name that you would give a cat. Then, on pressing the button, have the label display "My name is ___Enter_Cat_Name_Here__!" and then display a picture of an adorable cat. The stack view organizing your content should be centered both vertically and horizontally.

//  Created by Omair Qazi on 5/19/20.
//  Copyright © 2020 Omair Qazi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var nameField: UITextField!
    
    @IBOutlet weak var helloMessage: UILabel!
    
    @IBOutlet weak var picture: UIImageView!
    
    @IBAction func displayMessage(_ sender: UIButton) {
        helloMessage.text = "Hello, World. My name is \(nameField.text!)!"
        
        picture.isHidden = false
    }
    
}

