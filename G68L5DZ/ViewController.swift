//
//  ViewController.swift
//  G68L5DZ
//
//  Created by Misha on 13/02/2019.
//  Copyright © 2019 Misha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    let KoffeeMachine = CoffeeMachine.init()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func AddMilk(_ sender: UIButton) {
        KoffeeMachine.addMilk()
        Konsol.textColor = .red
        Konsol.text = ("MILK ADDED")
    }
    @IBAction func AddBeans(_ sender: UIButton) {
        KoffeeMachine.addBeans()
        Konsol.textColor = .brown
        Konsol.text = ("BEANS ADDED")
        
        
    }
    @IBAction func AddWater(_ sender: UIButton) {
        KoffeeMachine.addWater()
        Konsol.textColor = .blue
        Konsol.text = ("WATER ADDED")
        
    }
    @IBAction func MakesomeAmericano(_ sender: UIButton) {
        let KKoffeeMachine = KoffeeMachine.makeAmericano()
        if KKoffeeMachine == 0{
            Konsol.text = ("Here is you americano, human")
            Konsol.textColor = #colorLiteral(red: 0.3177623057, green: 0.310554546, blue: 0.2443539095, alpha: 1)
        } else {
            
            if KKoffeeMachine == 1{
                Konsol.text = ("No beans - no coffee")
                Konsol.textColor = .brown
            } else {
                Konsol.text = ("No water - no coffee")
                Konsol.textColor = .blue
            }
        }
    }
    
    @IBAction func MakesomeCappucino(_ sender: UIButton) {
        let KKoffeeMachine = KoffeeMachine.makeCappucino()
        if KKoffeeMachine == 0{
            Konsol.text = ("Here is you cappucino, human")
            Konsol.textColor = #colorLiteral(red: 0.7964702073, green: 0.7784039806, blue: 0.6124722959, alpha: 1)

        } else {
            if KKoffeeMachine == 1{
                Konsol.text = ("No beans - no coffee")
                Konsol.textColor = .brown

            } else{
                if KKoffeeMachine == 2{
                    Konsol.text = ("No milk - no coffee")
                    Konsol.textColor = .red

                } else {
                    Konsol.text = ("No water - no coffee")
                    Konsol.textColor = .blue

                }
            }
        }
    }
    @IBOutlet weak var Konsol: UILabel!
    
}

