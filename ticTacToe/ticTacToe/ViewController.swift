//
//  ViewController.swift
//  ticTacToe
//
//  Created by Антон Яценко on 21.11.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet var boardButtons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onStratButtonTouch(_ sender: UIButton) {
        titleLabel.text = "Your turn"
        startButton.isEnabled = false
    }
    @IBAction func onBoardButtonTouch(_ sender: UIButton) {
        sender.setTitle("X", for: .normal)
    }
    
}

