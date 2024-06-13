//
//  GameViewController.swift
//  Clubpen
//
//  Created by Jaden Velasco on 4/5/20.
//  Copyright © 2020 Jaden Velasco. All rights reserved.
//
import UIKit
import SpriteKit

class GameViewController: UIViewController  {
    

    override func viewDidLoad(){
        super.viewDidLoad()
        
        if let view = self.view as! SKView? {
                super.viewDidLoad()

                    // Load the SKScene from 'GameScene.sks'
            let scene = GameScene(size: view.bounds.size)
                // Set the scale mode to scale to fit the window
            scene.scaleMode = .aspectFill
            scene.size = view.bounds.size
                // Present the scene
            view.presentScene(scene)
            
//            
            view.ignoresSiblingOrder = true

        }


}

 

}
