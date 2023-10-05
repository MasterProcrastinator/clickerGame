//
//  ViewController3.swift
//  clickerGame
//
//  Created by ALVIN CHEN on 10/3/23.
//

import UIKit

class ViewController3: UIViewController {
    
    var totalPoints = 0
    var delegate: ViewController!
    
    @IBOutlet weak var error: UILabel!
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var label2: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    @IBAction func buy1Action(_ sender: UIButton) {
        if (totalPoints >= 100){
            delegate.upgrade1 = true
            totalPoints = totalPoints - 100
        }
        else{
            error.text = "you're too poor"
        }
    }
    
    @IBAction func buy2Action(_ sender: UIButton) {
        delegate.upgrade2 = true
    }
    
    
    
    
    
}
