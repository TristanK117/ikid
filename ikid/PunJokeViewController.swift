//
//  PunJokeViewController.swift
//  ikid
//
//  Created by Tristan Khieu on 4/28/25.
//

import UIKit

class PunJokeViewController: UIViewController {
    @IBOutlet weak var jokeLabel: UILabel!
    
    var showingQuestion = true
    let question = "To the guy that invented zero"
    let answer = "Thanks for nothing..."

    override func viewDidLoad() {
        super.viewDidLoad()
        jokeLabel.text = question
    }

    @IBAction func nextButtonTapped(_ sender: UIButton) {
        let newText = showingQuestion ? answer : question
        
        UIView.transition(with: jokeLabel,
                          duration: 0.5,
                          options: .transitionFlipFromRight,
                          animations: {
                              self.jokeLabel.text = newText
                          },
                          completion: nil)
        
        showingQuestion.toggle()
    }
}
