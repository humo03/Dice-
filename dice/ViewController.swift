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
    
    @IBOutlet weak var sumDices: UILabel!
    
    
    let diceImages = [#imageLiteral(resourceName: "dice1"), #imageLiteral(resourceName: "dice2"), #imageLiteral(resourceName: "dice3"), #imageLiteral(resourceName: "dice4"), #imageLiteral(resourceName: "dice5"), #imageLiteral(resourceName: "dice6")]
    

    
    @IBAction func button(_ sender: Any) {
        
        let ctr1 = Int.random(in: 0...5)
        let ctr2 = Int.random(in: 0...5)
        
        var test1 = 0
        var test2 = 0

        diceImageOne.image = diceImages[ctr1]
        diceImageTwo.image = diceImages[ctr2]
        
        switch ctr1{
        case 0:
            test1 = 1
        case 1:
            test1 = 2
        case 2:
            test1 = 3
        case 3:
            test1 = 4
        case 4:
            test1 = 5
        case 5:
            test1 = 6
        default:
            break
        }
        
        switch ctr2{
        case 0:
            test2 = 1
        case 1:
            test2 = 2
        case 2:
            test2 = 3
        case 3:
            test2 = 4
        case 4:
            test2 = 5
        case 5:
            test2 = 6
        default:
            break
        }
        
        sumDices.text = String(test1 + test2)
                
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}
