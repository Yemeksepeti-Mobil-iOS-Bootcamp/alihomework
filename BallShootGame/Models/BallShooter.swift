//
//  BallShooter.swift
//  BallShootGame
//
//  Created by Ali Korkmaz on 3.07.2021.
//

import Foundation

class BallShooter {
    var teta: Int // 0 < teta < 90
    var velocity: Int // 0 < velocity < 100
    var range : Double {
        let g: Double = 10
        return Double(self.velocity) * Double(self.velocity) * sin(2 * Double(self.teta) * Double.pi / 180) / g
    }
    
    init(teta: Int, velocity: Int) {
        self.teta = teta
        self.velocity = velocity
    }
    
}
