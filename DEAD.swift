//
//  DEAD.swift
//  Clubpen
//
//  Created by Jaden Velasco on 4/13/20.
//  Copyright © 2020 Jaden Velasco. All rights reserved.
//

import SpriteKit
class DEAD: SKScene {
    let background = SKSpriteNode(imageNamed: "scrool u dead1")
    let backtoM = SKLabelNode(text: "Back To Menu")
    let uhavedead = SKLabelNode(text: "you have died from Jaden the dragon")
    
    override func didMove(to view: SKView) {
        background.position =  CGPoint(x: frame.size.width/2, y: frame.size.height/2)
        background.size = CGSize(width: frame.size.width, height: frame.size.height)
        backtoM.zPosition = -10000000
        addChild(background)
        backToMenu()
        title()
            }
    func backToMenu()  {
        backtoM.position = CGPoint(x: frame.size.width/2, y: frame.size.height/3)
        backtoM.fontSize = 40.0
        backtoM.zPosition = 100
        backtoM.fontColor = UIColor.black
        backtoM.name = "backtomenu"
        addChild(backtoM)
    }
    func title()  {
        uhavedead.position = CGPoint(x: frame.size.width/2, y: frame.size.height/1.5)
        uhavedead.fontSize = 40.0
        uhavedead.zPosition = 100
        uhavedead.fontColor = UIColor.black
        addChild(uhavedead)
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
         for touch in touches {
                        let location =  touch.location(in: self)
                        let touchedNode = atPoint(location)
            if touchedNode.name == "backtomenu"{
                let hahah = GameScene(size: view!.bounds.size)
                view?.presentScene(hahah)
                
            }
    }
    
}
}
