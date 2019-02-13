//
//  CoffeeMachine.swift
//  G68L5DZ
//
//  Created by Misha on 13/02/2019.
//  Copyright © 2019 Misha. All rights reserved.
//

import UIKit

class CoffeeMachine: NSObject {
    var beans = 0
    var water = 0
    var milk = 0
    var lotok = 0
    
    
    func addBeans(){
        self.beans += 100
        
        
    }
    
    func addWater(){
        self.water += 500
        
    }
    
    func addMilk(){
        self.milk += 200
        
    }
    
    func makeCappucino()->Int{
        if beans >= 50 && milk >= 100 && water >= 250{
            self.beans -= 50
            self.milk -= 100
            self.water -= 250
            return (0)
        } else {
            if beans < 50 {
                return (1)
            } else {
            if milk < 100 {
                return (2)
            } else {
                return (3)
                
            }
        }
    }
    }
    
    func makeAmericano()->Int{
        if beans >= 50 && water >= 150{
            self.beans -= 50
            self.water -= 150
            return (0)
        } else {
            if beans < 50 {
                return (1)
            } else {
                return (2)
            }
        }
    }
    
    
    
}
