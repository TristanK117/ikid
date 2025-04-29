//
//  KnockKnockJokeViewController.swift
//  ikid
//
//  Created by Tristan Khieu on 4/28/25.
//

import UIKit

class KnockKnockJokeViewController: UIViewController {
    @IBOutlet weak var jokeLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var showingImage = false

    let steps = [
        "Knock knock.",
        "Who's there?",
        "Bethesda",
        "Bethesda who?",
        "Drops Oblivion after an annoucement trailer"
    ]
    
    var currentStep = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        jokeLabel.text = steps[currentStep]
        imageView.image = UIImage(named: "ChadTodd")
        imageView.isHidden = false
    }

    @IBAction func nextButtonTapped(_ sender: UIButton) {
        currentStep += 1
        if currentStep >= steps.count {
            currentStep = 0 
        }

        UIView.transition(with: jokeLabel,
                          duration: 0.5,
                          options: .transitionFlipFromRight,
                          animations: {
                              self.jokeLabel.text = self.steps[self.currentStep]
                          },
                          completion: nil)
        UIView.transition(with: imageView,
                          duration: 0.5,
                          options: .transitionCrossDissolve,
                          animations: {
                              self.imageView.isHidden.toggle()
                          },
                          completion: nil)
    }
}
