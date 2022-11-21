//
//  ViewController.swift
//  ticTacToe
//
//  Created by Антон Яценко on 21.11.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var isUserX = true
    var userSymbol = ""
    var computerSymbol = ""
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet var boardButtons: [Any]!
    @IBOutlet weak var subtitleLabel: UILabel!
    
    var boardStatusArray = [[String]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        boardButtons = [
        "", "", "",
        "", "", "",
        "", "", ""]
        
        if !isUserX{
            titleLabel.text = "Computer turn"
            userSymbol = "O"
            computerSymbol = "X"
            computerTurn()
        } else {
            titleLabel.text = "Your turn"
            userSymbol = "X"
            computerSymbol = "O"
        }
    }

    @IBAction func onBoardButtonTouch(_ sender: UIButton) {
        subtitleLabel.text = ""
        if sender.titleLabel?.text != userSymbol && sender.titleLabel?.text != computerSymbol {
                    sender.setTitle(userSymbol, for: .normal)
                } else {
                    subtitleLabel.text = "this cell is not empty"
                }
    }
    
    func computerTurn(){
        
    }
}

