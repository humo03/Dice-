//
//  ViewController.swift
//  dice
//
//  Created by KHUMOYUNMIRZO TURSUNPULATOV on 07/12/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageOne: UIImageView!
    
    @IBOutlet weak var diceImageTwo: UIImageView!
    
    let diceImages = [#imageLiteral(resourceName: "dice1"), #imageLiteral(resourceName: "dice2"), #imageLiteral(resourceName: "dice3"), #imageLiteral(resourceName: "dice4"), #imageLiteral(resourceName: "dice5"), #imageLiteral(resourceName: "dice6")]
    
    @IBAction func button(_ sender: Any) {

        diceImageOne.image = diceImages[Int.random(in: 0...5)]
        diceImageTwo.image = diceImages.randomElement()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}
