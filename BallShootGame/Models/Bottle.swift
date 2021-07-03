//
//  Bottle.swift
//  BallShootGame
//
//  Created by Ali Korkmaz on 3.07.2021.
//

import Foundation

class Bottle {
    var location: Int //location  0 < d < 1500
    var delta: Double  // 0.1 < delta < 1
    var status: Int // 0 or 1
    
    init(location: Int, delta: Double, status: Int) {
        self.location = location
        self.delta = delta
        self.status = status
    }
}
