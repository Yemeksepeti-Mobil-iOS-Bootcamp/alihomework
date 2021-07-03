//
//  Game.swift
//  BallShootGame
//
//  Created by Ali Korkmaz on 3.07.2021.
//

import Foundation

class Game {
    
    var player: Player
    var ballShooter: BallShooter
    var bottle: Bottle
    
    init(player: Player, ballShooter: BallShooter, bottle: Bottle) {
        self.player = player
        self.ballShooter = ballShooter
        self.bottle = bottle
    }
    
    func setPlayerNickname(nicname: String) {
        self.player.nickname = nicname
    }
    
    func setLocationOfBottle(location: Int){
        self.bottle.location = location
    }
    
    func setDeltaOfBottle(delta: Double){
        self.bottle.delta = delta
    }
    
    func setBottleStatus(status: Int){
        self.bottle.status = status
    }
    
    func setBallAngleAndVelocity(angle: Int, velocity: Int){
        self.ballShooter.teta = angle
        self.ballShooter.velocity = velocity
    }
    
    func shoot() -> Int{
        if Double(self.bottle.location) - self.bottle.delta <= ballShooter.range
            && ballShooter.range <= Double(self.bottle.location) + self.bottle.delta {
            
            self.bottle.status = 0
            self.player.points += 1
            return 0
        }
        return 1
    }
}
