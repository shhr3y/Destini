//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var storyLabel: UILabel!
    @IBOutlet var firstButton: UIButton!
    @IBOutlet var secondButton: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       updateUI()
    }

    @IBAction func choiceMade(sender: UIButton) {
        let selectedChoice = sender.currentTitle!
        
        storyBrain.nextStory(selectedChoice)
        
        updateUI()
    }
    
    func updateUI(){
        storyLabel.text = storyBrain.getStory().title
        firstButton.setTitle(storyBrain.getStory().choice1, for: .normal)
        secondButton.setTitle(storyBrain.getStory().choice2, for: .normal)
    }
    
}

