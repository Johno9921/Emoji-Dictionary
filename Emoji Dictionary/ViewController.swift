//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Jonathan Campbell on 10/22/16.
//  Copyright © 2016 Zappy Code. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var dacooltableview: UITableView!
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        dacooltableview.dataSource = self
        dacooltableview.delegate = self
        emojis = makeEmojiArry()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func makeEmojiArry() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "🎃"
        emoji1.birthYear = 2010
        emoji1.category = "Smiley"
        emoji1.definition = "A jack-o-lantern!"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "🍕"
        emoji2.birthYear = 2008
        emoji2.category = "Food"
        emoji2.definition = "A slice of pizza!"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "🌴"
        emoji3.birthYear = 2004
        emoji3.category = "Plant"
        emoji3.definition = "A palm tree!"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "🏋🏻"
        emoji4.birthYear = 2016
        emoji4.category = "Person"
        emoji4.definition = "A weightlifter!"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "🐹"
        emoji5.birthYear = 2001
        emoji5.category = "Smiley"
        emoji5.definition = "A hamster!"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5]
        
        
    }

}

