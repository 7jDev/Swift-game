//
//  round-3-timer.swift
//  Clubpen
//
//  Created by Jaden Velasco on 4/14/20.
//  Copyright © 2020 Jaden Velasco. All rights reserved.
//


import SpriteKit
class round3: SKScene {
    let round2but = SKLabelNode(text: "ROUND 3")
    var timer = Timer()
    let counte  = SKLabelNode(text: "\(time)")
    
    override func didMove(to view: SKView) {
        ROUND2()
        timerforround2()
        timer.invalidate()
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timesr), userInfo: nil, repeats: true)
        


    }
    @objc func timesr()  {
        time = time - 1
         self.update()

    }
    func ROUND2()  {
        round2but.position = CGPoint(x: frame.size.width/2, y: frame.size.height/2)
        round2but.fontSize = 50.0
        round2but.color = UIColor.black
        addChild(round2but)
    }
    func timerforround2()  {
        counte.position = CGPoint(x: frame.size.width/2, y: frame.size.height/3)
        counte.fontSize = 40.0
        counte.fontColor = UIColor.blue
        addChild(counte)
    }
    func update()  {
        counte.text = "\(time)"
    }
    override func update(_ currentTime: TimeInterval) {
        
        if time <= 0{
            let newround = classicround3(size: view!.bounds.size)
            view?.presentScene(newround)
            time = 3
            timer.invalidate()
            
        }
    }
}
