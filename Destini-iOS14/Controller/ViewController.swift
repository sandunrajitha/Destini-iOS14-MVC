//
//  ViewController.swift
//  Destini-iOS14
//
//  Created by Sandun Rajitha on 16/11/2020.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI(0)
    }
    
    @IBAction func choiceButtonClicked(_ sender: UIButton) {
        let userChoice = sender.currentTitle!
        //print(sender.currentTitle!)
        if userChoice == storyBrain.getChoice1(){
            updateUI(storyBrain.getDestination1())
        } else if userChoice == storyBrain.getChoice2() {
            updateUI(storyBrain.getDestination2())
        }
    }
    
    
    func updateUI(_ choice: Int) {
        titleLabel.text = storyBrain.getNextStoryPoint(choice)
        choice1Button.setTitle(storyBrain.getChoice1(), for: .normal)
        choice2Button.setTitle(storyBrain.getChoice2(), for: .normal)
    }
    
    
    
}

