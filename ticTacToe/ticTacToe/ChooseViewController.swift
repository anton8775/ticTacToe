//
//  ChooseViewController.swift
//  ticTacToe
//
//  Created by Антон Яценко on 21.11.2022.
//

import UIKit

class ChooseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let vc = segue.destination as? ViewController else {
                    return
                }
        
        vc.isUserX = segue.identifier == "chooseXIdn"
    }
}
