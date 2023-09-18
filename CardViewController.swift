//
//  CardViewController.swift
//  CardFitness
//
//  Created by Atul Kumar on 18/09/23.
//

import UIKit

class CardViewController: UIViewController {

    
    @IBOutlet var cardImageView: UIImageView!
    
    @IBOutlet var buttons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for button in buttons {
            button.layer.cornerRadius = 8
        }

    }
    
    @IBAction func stopButtonTapped(_ sender: UIButton) {
        
    }
    
    @IBAction func restartButtonTapped(_ sender: Any) {
    }
    
    @IBAction func rulesButtonTapped(_ sender: Any) {
    }
}
