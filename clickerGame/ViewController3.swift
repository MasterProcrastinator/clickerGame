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
    
    @IBOutlet weak var pointCountLabel: UILabel!
    @IBOutlet weak var error: UILabel!
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var label2: UILabel!
    
    @IBOutlet weak var labelUpgrade: UILabel!
    
    @IBOutlet weak var labelUpgrade2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pointCountLabel.text = "\(totalPoints)"
        if delegate.upgrade1 == true{
            labelUpgrade.text = "bought"
        }
        if delegate.upgrade2 == true{
            labelUpgrade2.text = "bought"
        }
    }

    @IBAction func buy1Action(_ sender: UIButton) {
        if (totalPoints >= 20 && delegate.upgrade1 != true){
            delegate.upgrade1 = true
            totalPoints = totalPoints - 20
            pointCountLabel.text = "\(totalPoints)"
            error.text = ""
            labelUpgrade.text = "bought"
            delegate.pointCount = totalPoints
        }
        else if (delegate.upgrade1 == true){
            error.text = "already bought"
        }
        else{
            error.text = "you're too poor"
        }
    }
    
    @IBAction func buy2Action(_ sender: UIButton) {
        if(totalPoints >= 100 && delegate.upgrade2 != true){
            delegate.upgrade2 = true
            totalPoints = totalPoints - 100
            pointCountLabel.text = "\(totalPoints)"
            error.text = ""
            labelUpgrade2.text = "bought"
            delegate.pointCount = totalPoints
        }
        else if (delegate.upgrade2 == true){
            error.text = "already bought"
        }
        else{
            error.text = "you're too poor"
        }
    }
    
    
    
    
    
}
