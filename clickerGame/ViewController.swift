//
//  ViewController.swift
//  clickerGame
//
//  Created by ALVIN CHEN on 10/3/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pointsVariable: UILabel!
    
    var pointCount = 0
    var upgrade1 = false
    var upgrade2 = false


    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        pointsVariable.text = "\(pointCount)"
    }
    
    @IBAction func shopButton(_ sender: UIButton) {
        performSegue(withIdentifier: "segue", sender: self)
    }
    
    @IBAction func pointsButton(_ sender: UIButton) {
        if(upgrade1 == true && upgrade2 == true){
            pointCount = pointCount + 20
        }
        if(upgrade1 == true){
            pointCount = pointCount + 5
        }
        if(upgrade2 == true){
            pointCount = pointCount + 15
        }
        else{
            pointCount = pointCount+1
        }
        pointsVariable.text = "\(pointCount)"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //NVC (next view controller) giving access to the next view controller
        let nvc = segue.destination as! ViewController3
        nvc.totalPoints = pointCount
        nvc.delegate = self
    }
}

