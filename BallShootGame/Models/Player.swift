//
//  Player.swift
//  BallShootGame
//
//  Created by Ali Korkmaz on 3.07.2021.
//

import Foundation

class Player {
    
    var nickname: String
    var points: Int
    
    init(nickname: String, points: Int) {
        self.nickname = nickname
        self.points = points
    }
    
    func printPlayer(){
        print("Nicname: ", nickname,"Points: ", points)
    }
}
