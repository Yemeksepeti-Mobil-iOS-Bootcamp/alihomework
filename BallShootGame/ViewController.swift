//
//  ViewController.swift
//  BallShootGame
//
//  Created by Ali Korkmaz on 3.07.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak private var nicknameLabel: UILabel!
    
    @IBOutlet weak private var angleLabel: UILabel!
    
    @IBOutlet weak private var velocityLabel: UILabel!
    
    @IBOutlet weak private var bottleLocLable: UILabel!
    
    @IBOutlet weak private var deltaLabel: UILabel!
    
    var player = Player(nickname: "", points: 0)
    var shooter = BallShooter(teta:  0, velocity: 0)
    var bottle = Bottle(location: 0, delta: 0.1, status: 1)
   
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        getNicknameDialog()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func angleValueChange(_ sender: UISlider) {
        let currentValue = Int(sender.value)
        angleLabel.text = "\(currentValue)"
    }
    
    @IBAction func velocityValueChange(_ sender: UISlider) {
        let currentValue = Int(sender.value)
        velocityLabel.text = "\(currentValue)"
    }
    
    @IBAction func bottleLocValuChange(_ sender: UISlider) {
        let currentValue = Int(sender.value)
        bottleLocLable.text = "\(currentValue)"
    }
    
    @IBAction func deltaValueChange(_ sender: UISlider) {
        let currentValue = Double(sender.value) * 0.1
        deltaLabel.text = String(format:"%.01f", currentValue)
    }
    
    @IBAction func onPressShootButton(_ sender: Any) {
        
        let game = Game(player: player, ballShooter: shooter, bottle: bottle)
        game.setBottleStatus(status: 1)
        game.setPlayerNickname(nicname: nicknameLabel.text ?? "")
        
        if let angleValue = angleLabel.text, let velocityValue = velocityLabel.text,let bottleLocValue = bottleLocLable.text, let deltaValue =  deltaLabel.text {
            game.setBallAngleAndVelocity(angle: Int(angleValue) ?? 0, velocity: Int(velocityValue) ?? 0)
            game.setLocationOfBottle(location: Int(bottleLocValue) ?? 0)
            game.setDeltaOfBottle(delta: Double(deltaValue) ?? 0.1 )
        }
       
        let bottleStatus = game.shoot()
        
        let alert = UIAlertController(title: "Your Score: \(player.points)", message: "Bottle Status: \(bottleStatus)", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            
        present(alert, animated: true)
        
    }
    
    func getNicknameDialog() {
        
        let alert = UIAlertController(title: "WELCOME", message: "Please enter your nickname!", preferredStyle: .alert)

        alert.addTextField { (textField) in
            textField.placeholder = "Nickname"
        }

        alert.addAction(UIAlertAction(title: "Start", style: .default, handler: { [weak alert] (_) in
            let textField = alert?.textFields?[0]
            self.nicknameLabel.text = String("YOUR NICKNAME:  \(textField?.text ?? "")")
           
        }))

        present(alert, animated: true)
    }
}

