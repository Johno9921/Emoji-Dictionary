//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Jonathan Campbell on 10/23/16.
//  Copyright © 2016 Zappy Code. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var definitionlabel: UILabel!
    @IBOutlet weak var emojilabel: UILabel!
    var emoji = "NO EMOJI"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        emojilabel.text = emoji
        
        if emoji == "🏋🏻" {
            definitionlabel.text = "This is a Weightlifter!"
        }
        if emoji == "🐹" {
            definitionlabel.text = "This is a Hamster!"
        }
        if emoji == "🍕" {
            definitionlabel.text = "This is a slice of Pizza!"
        }
        if emoji == "🐜" {
            definitionlabel.text = "This is an Ant!"
        }
        if emoji == "🎃" {
            definitionlabel.text = "This is a Jack-O-Lantern!"
        }
        if emoji == "⏰" {
            definitionlabel.text = "This is an Alarm Clock!"
        }
        if emoji == "🐻" {
            definitionlabel.text = "This is a Bear!"
        }
        if emoji == "😴" {
            definitionlabel.text = "This is a Sleeping Person!"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
