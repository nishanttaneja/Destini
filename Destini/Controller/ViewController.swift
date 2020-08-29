//
//  ViewController.swift
//  Destini
//
//  Created by Nishant Taneja on 29/08/20.
//  Copyright © 2020 Nishant Taneja. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // IBOutlets
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choiceOneButton: UIButton!
    @IBOutlet weak var choiceTwoButton: UIButton!
    
    // Initialise
    var storyBrain = StoryBrain()
    
    // Override View Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    // IBAction
    @IBAction func choiceSelected(_ sender: UIButton) {
        storyBrain.nextStory(for: sender.currentTitle!)
        updateUI()
    }
    
    // UI
    func updateUI() {
        storyLabel.text = storyBrain.getStoryTitle()
        choiceOneButton.setTitle(storyBrain.getChoiceOne(), for: .normal)
        choiceTwoButton.setTitle(storyBrain.getChoiceTwo(), for: .normal)
    }
}

