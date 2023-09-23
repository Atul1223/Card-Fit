//
//  CardViewController.swift
//  CardFitness
//
//  Created by Atul Kumar on 18/09/23.
//

import UIKit

class CardViewController: UIViewController {

    
    @IBOutlet var cardImageView: UIImageView!
    
    var timer: Timer!
    
    var cards : [UIImage] = Card.allValues
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startTimer()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        timer.invalidate()
    }
    
    func startTimer() {
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(showRandomImage), userInfo: nil, repeats: true)
    }
    
    @objc func showRandomImage() {
        cardImageView.image = cards.randomElement() ?? UIImage(named: "AS")
    }
    
    @IBAction func stopButtonTapped(_ sender: UIButton) {
        timer.invalidate()
    }
    
    @IBAction func restartButtonTapped(_ sender: Any) {
        timer.invalidate()
        startTimer()
    }
}
