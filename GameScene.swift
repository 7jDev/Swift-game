//
//  GameScene.swift
//  Clubpen
//
//  Created by Jaden Velasco on 4/5/20.
//  Copyright © 2020 Jaden Velasco. All rights reserved.
//

import SpriteKit

class GameScene:SKScene{
    let cureenttim = Date()
    

    
    let date = Date()
    let calendar = Calendar.current
    let ad = SKSpriteNode(imageNamed: "x2")
    
    var currentGame: GameScene!
    let background = SKSpriteNode(imageNamed: "background")
    let scrool = SKSpriteNode(imageNamed: "scroll")

    let mage = SKSpriteNode(imageNamed: "mage")
    let welcome = SKLabelNode(text: "Welcome to You V GOLEMS")
    let classic = SKLabelNode(text: "classic")
   let people_u_buy = SKLabelNode(text: "classes")
    let WHY = SKLabelNode(text: "\(UserDefaults.standard.integer(forKey: "RANK") ) -  \(UserDefaults.standard.integer(forKey: "LEV"))")
let sol = SKSpriteNode(imageNamed: "soldier-base")
      let buy  = SKLabelNode(text: "get some ranks")

            let some = SKLabelNode(text: "rank \(UserDefaults.standard.integer(forKey: "Number"))")
    let assassin = SKSpriteNode(imageNamed: "assassin")
    override func didMove(to view: SKView) {

         updatemore()
        backgrou()
        back()
        classes()
        text()
        EXP2()
        ads()
  
 


        
    }

    

    func ads()  {
        ad.position = CGPoint(x: frame.size.width/2.5, y: frame.size
            .height/1.2)
        ad.size = CGSize(width: frame.size.width/5, height: frame.size.height/5)
        ad.name  = "ad"
        addChild(ad)
    }
    

    func EXP2()  {
  
        
        some.zPosition = 100
        some.position = CGPoint(x: frame.size.width/1.07, y: frame.size.height/1.2)
        some.fontSize = 20
        some.fontColor = UIColor.black
        addChild(some)
        WHY.zPosition = 100
        WHY.position = CGPoint(x: frame.size.width/1.1, y: frame.size.height/1.1)
        WHY.fontColor = UIColor.black
        WHY.fontSize  = 20.0
        addChild(WHY)
        
    };func updateli(){
        leveltoGEt = UserDefaults.standard.integer(forKey: "LEV")
        WHY.text = "\(UserDefaults.standard.integer(forKey: "RANK") ) -  \(UserDefaults.standard.integer(forKey: "Number"))"
    }

    func  updatemore(){
        if UserDefaults.standard.integer(forKey: "RANK") >= UserDefaults.standard.integer(forKey: "LEV"){
            if UserDefaults.standard.integer(forKey: "RANK") > UserDefaults.standard.integer(forKey: "LEV"){
                exp = UserDefaults.standard.integer(forKey: "RANK") - UserDefaults.standard.integer(forKey: "LEV")
                UserDefaults.standard.set(exp, forKey: "RANK")
                
                
            }
            if UserDefaults.standard.integer(forKey: "RANK") == UserDefaults.standard.integer(forKey: "LEV"){
                exp = 0
                UserDefaults.standard.set(exp, forKey: "RANK")
                
            }
            leveltoGEt += 150
            UserDefaults.standard.set(leveltoGEt, forKey: "LEV")
             RandNumber = UserDefaults.standard.integer(forKey: "LEV") / 150
             UserDefaults.standard.set(RandNumber, forKey: "Number")
             some.text = "rank  \(UserDefaults.standard.integer(forKey: "Number"))"



            UserDefaults.standard.set(leveltoGEt, forKey: "LEV")
            leveltoGEt = UserDefaults.standard.integer(forKey: "LEV")
            WHY.text = "\(UserDefaults.standard.integer(forKey: "RANK") ) -  \(UserDefaults.standard.integer(forKey: "LEV"))"
            UserDefaults.standard.set(RandNumber, forKey: "Number")
            UserDefaults.standard.set(leveltoGEt, forKey: "LEV")
                UserDefaults.standard.set(exp, forKey: "RANK")
        }


    }
    func back()  {
        
        scrool.position = CGPoint(x: frame.size.width/1.3, y: frame.size.height/2)
        scrool.size = CGSize(width: frame.size.width/4, height: frame.size.height/1)
        addChild(scrool)
    }
    func backgrou()  {
        background.zPosition = -15
        background.position = CGPoint(x: frame.size.width/2, y: frame.size.height/2)
        background.size = CGSize(width: frame.size.width, height: frame.size.height)
        
        addChild(background)
    }
    func text() {
        welcome.zPosition = 1
        welcome.position = CGPoint(x: frame.size.width/1.3, y: frame.size.height/1.2)
        welcome.fontSize = 15.0
        welcome.fontColor = UIColor.black
        addChild(welcome)
        classic.zPosition = 1
        classic.position = CGPoint(x: frame.size.width/1.3, y: frame.size.height/2)
        classic.fontSize = 20.0
        classic.fontColor = UIColor.black
        classic.name = "classic"
        addChild(classic)
        people_u_buy.zPosition = 1
        people_u_buy.position = CGPoint(x: frame.size.width/1.3, y: frame.size.height/2.4)
        people_u_buy.fontSize = 20.0
        people_u_buy.fontColor = UIColor.black
        people_u_buy.name = "class"
        addChild(people_u_buy)
    }
    func classes()  {
        mage.position = CGPoint(x: frame.size.width/3, y: frame.size.height/7.5)
        mage.size = CGSize(width: frame.size.width/5, height: frame.size.height/4)
        addChild(mage)
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
                  let location = touch.location(in: self)
                  let touchedNode = atPoint(location)
            if touchedNode.name == "class"{
                let abc = classessss(size: view!.bounds.size)
                view?.presentScene(abc)
            }
            if touchedNode.name == "classic"{
                let bro = classicBOI(size: view!.bounds.size)
                view?.presentScene(bro)
            }
            if touchedNode.name == "ad"{
  var mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
                var vc = mainStoryboard.instantiateViewController(withIdentifier: "Main1") as! UIViewController
                self.view?.window?.rootViewController?.present(vc, animated: true, completion: nil)
                
                

            }
            
        }
        
    }
    override func update(_ currentTime: TimeInterval) {
        if let date = UserDefaults.standard.object(forKey: "creationTime") as? Date {
            if let diff = Calendar.current.dateComponents([.hour], from: date, to: Date()).hour, diff == 1 {
                UserDefaults.standard.set(false, forKey: "TimerON")
            }
        }

        print(UserDefaults.standard.integer(forKey: "RANK"))
 updatemore()
         monHEATH2 = 200
         personHEATH  = 100
         monHEATH2 = 400
         personHEATH3 = 100
        updatemore()
        time = 3
    }

}

          
