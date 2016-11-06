//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Jonathan Campbell on 10/23/16.
//  Copyright © 2016 Zappy Code. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var birthYearLabek: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var definitionlabel: UILabel!
    @IBOutlet weak var emojilabel: UILabel!
    var emoji = Emoji()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        emojilabel.text = emoji.stringEmoji
        birthYearLabek.text = "Origination Date: \(emoji.birthYear)"
        categoryLabel.text = "Category: \(emoji.category)"
        definitionlabel.text = emoji.definition
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
