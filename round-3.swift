//
//  round-3-time.swift
//  Clubpen
//
//  Created by Jaden Velasco on 4/14/20.
//  Copyright © 2020 Jaden Velasco. All rights reserved.
//


import SpriteKit
import AVFoundation
class classicround3: SKScene {
    let levfive_weapon = SKSpriteNode(imageNamed:"Untitled design (1)")
    let WEApon_label = SKLabelNode(text: "use per one round: 150 damage 100% hit")
        let background = SKSpriteNode(imageNamed: "background")
    let scrool = SKSpriteNode(imageNamed: "scroll")
    let mage = SKSpriteNode(imageNamed: "mage")
    let monster = SKSpriteNode(imageNamed: "0_Golem_Idle_000")
        let first = SKSpriteNode(imageNamed: "Magic_Attack1")
    let assassinPow = SKLabelNode(text: "DING DONG : 50 damage  40 % hit")
     let assassinPOW2 = SKLabelNode(text: "THE BUZZCUT : 5% chance you chop his head off")
     let assassin = SKSpriteNode(imageNamed: "assassin")
    let megArray = [SKTexture(imageNamed: "Magic_Attack2"),SKTexture(imageNamed: "Magic_Attack3"),SKTexture(imageNamed: "Magic_Attack4"),SKTexture(imageNamed: "Magic_Attack5"),SKTexture(imageNamed: "Magic_Attack6"),SKTexture(imageNamed: "Magic_Attack7"),SKTexture(imageNamed: "Magic_Attack8"),SKTexture(imageNamed: "Magic_Attack9"),SKTexture(imageNamed: "Magic_Attack10"),SKTexture(imageNamed: "Magic_Attack11"),SKTexture(imageNamed: "Magic_Attack22"),SKTexture(imageNamed: "Magic_Attack23")]
       
    let normal = SKSpriteNode(imageNamed: "iu-1")
    let megpower = SKLabelNode(text: "bling dog : maybe a lot 100 damage but 10% chance hit ")
    let megpower2 = SKLabelNode(text: "swiftness of MEH : 70% chance of hit 10 damage hit")
    let classic = SKLabelNode(text: "punch :damage 20 80% chance")
    let b = SKLabelNode(text: "kick: damage 50 40% chance")
    let solPOW = SKLabelNode(text: "PEW pew: 25 damage 60% chance hit ")
    let solPOW2 = SKLabelNode(text: "oof : HIT head 50 damage 50% chance ")
    let sol = SKSpriteNode(imageNamed: "war1")
    let monstertext = SKLabelNode(text: " \(monHEATH3)/800")
    let pertext = SKLabelNode(text: "\(personHEATH3)/100")
    let deadSCROOL = SKSpriteNode(imageNamed: "scrool u dead")
    let names = SKLabelNode(text: "you HIT")
    let monHIT = SKLabelNode(text: "you tried dragon blocked then hit you")
 var rocketAnimArray = [SKTexture(imageNamed: "0_Golem_Slashing_000"),SKTexture(imageNamed: "0_Golem_Slashing_001-1"),SKTexture(imageNamed: "0_Golem_Slashing_002-1"),SKTexture(imageNamed: "0_Golem_Slashing_003"),SKTexture(imageNamed: "0_Golem_Slashing_004-1"),SKTexture(imageNamed: "0_Golem_Slashing_005-1"),SKTexture(imageNamed: "0_Golem_Slashing_006-1"),SKTexture(imageNamed: "0_Golem_Slashing_007-1"),SKTexture(imageNamed: "0_Golem_Slashing_008-1"),SKTexture(imageNamed: "0_Golem_Slashing_009-1"),SKTexture(imageNamed: "0_Golem_Slashing_010-1"),SKTexture(imageNamed: "0_Golem_Slashing_011-1")]
    var assassinArray = [SKTexture(imageNamed: "p1"),SKTexture(imageNamed: "p1"),SKTexture(imageNamed: "p3"),SKTexture(imageNamed: "p4"),SKTexture(imageNamed: "p5"),SKTexture(imageNamed: "p6"),SKTexture(imageNamed: "p7"),SKTexture(imageNamed: "p8"),SKTexture(imageNamed: "p9"),SKTexture(imageNamed: "p10"),SKTexture(imageNamed: "p11"),SKTexture(imageNamed: "p12")]
    var normalArray = [SKTexture(imageNamed: "0_Fallen_Angels_Slashing_000"),SKTexture(imageNamed: "0_Fallen_Angels_Slashing_001"),SKTexture(imageNamed: "0_Fallen_Angels_Slashing_002"),SKTexture(imageNamed: "0_Fallen_Angels_Slashing_003"),SKTexture(imageNamed: "0_Fallen_Angels_Slashing_004"),SKTexture(imageNamed: "0_Fallen_Angels_Slashing_005"),SKTexture(imageNamed: "0_Fallen_Angels_Slashing_006"),SKTexture(imageNamed: "0_Fallen_Angels_Slashing_007"),SKTexture(imageNamed: "0_Fallen_Angels_Slashing_008"),SKTexture(imageNamed: "0_Fallen_Angels_Slashing_009"),SKTexture(imageNamed: "0_Fallen_Angels_Slashing_010"),SKTexture(imageNamed: "0_Fallen_Angels_Slashing_011"),SKTexture(imageNamed: "iu-1")]
        var solArray = [SKTexture(imageNamed: "0_Warrior_Attack_2_000"),SKTexture(imageNamed: "0_Warrior_Attack_2_001"),SKTexture(imageNamed: "0_Warrior_Attack_2_002"),SKTexture(imageNamed: "0_Warrior_Attack_2_003"),SKTexture(imageNamed: "0_Warrior_Attack_2_004"),SKTexture(imageNamed: "0_Warrior_Attack_2_005"),SKTexture(imageNamed: "0_Warrior_Attack_2_006"),SKTexture(imageNamed: "0_Warrior_Attack_2_007"),SKTexture(imageNamed: "0_Warrior_Attack_2_008"),SKTexture(imageNamed: "0_Warrior_Attack_2_009"),SKTexture(imageNamed: "0_Warrior_Attack_2_010"),SKTexture(imageNamed: "0_Warrior_Attack_2_011"),SKTexture(imageNamed: "0_Warrior_Attack_2_012"),SKTexture(imageNamed: "0_Warrior_Attack_2_013"),SKTexture(imageNamed: "0_Warrior_Attack_2_014")]
            var player: AVAudioPlayer?
        var oneTime = 0
    var norm = [SKTexture(imageNamed: "Untitled design (3)")]
  
        var PEW = SKSpriteNode(imageNamed: "Untitled design (2)")
    override func didMove(to view: SKView) {
        backgrou()
        MONROUNDONE()
        people()
        back()
        label()
        UserDefaults.standard.set(monHEATH3, forKey: "mon")
           if let asset = NSDataAsset(name:"App"){
        
              do {
                    // Use NSDataAsset's data property to access the audio file stored in Sound.
                     player = try AVAudioPlayer(data:asset.data, fileTypeHint:"mp3")
                    // Play the above sound file.
                    player?.play()
              } catch let error as NSError {
                    print(error.localizedDescription,  "  NO!!")
              }
        }

    }
    func backgrou()  {
        background.zPosition = -15
        background.position = CGPoint(x: frame.size.width/2, y: frame.size.height/2)
        background.size = CGSize(width: frame.size.width, height: frame.size.height)
        
        addChild(background)
    }
    func updatescore(){
        monstertext.text = "\(monHEATH3 )/800"
        
        
    }

    func update() {
        pertext.text = "\(personHEATH3)/100"
    }
    func back()  {
        
            if normal.isHidden == false{
                classic.zPosition = 1
                classic.position = CGPoint(x: frame.size.width/1.3, y: frame.size.height/1.8)
                classic.fontSize = 15.0
                classic.fontColor = UIColor.black
                classic.name = "classic"
                addChild(classic)
                b.zPosition = 1
                b.position = CGPoint(x: frame.size.width/1.3, y: frame.size.height/2)
                b.fontSize = 15.0
                b.fontColor = UIColor.black
                b.name = "b"
                addChild(b)
                
            }
            
            if UserDefaults.standard.integer(forKey: "Number") >= 5{

                WEApon_label.zPosition = 1
                WEApon_label.position = CGPoint(x: frame.size.width/1.3, y: frame.size.height/2.5)
                WEApon_label.fontSize = 15.0
                WEApon_label.fontColor = UIColor.black
                WEApon_label.name = "BIG_BOI"
                addChild(WEApon_label)
                
            }
        if sol.isHidden == false{
            classic.isHidden = true
            b.isHidden = true
            solPOW.isHidden = false
            solPOW2.isHidden = false
            solPOW.zPosition = 1
            solPOW.position = CGPoint(x: frame.size.width/1.3, y: frame.size.height/2)
            solPOW.fontSize = 15.0
        solPOW.fontColor = UIColor.black
            solPOW.name = "sol"
            addChild(solPOW)
            solPOW2.zPosition = 100
            solPOW2.position = CGPoint(x: frame.size.width/1.3, y: frame.size.height/2.5)
            solPOW2.fontSize = 15.0
            solPOW2.fontColor = UIColor.black
            solPOW2.name = "sol2"
            addChild(solPOW2)
        }
        

        if  assassin.isHidden == false{
                classic.isHidden = true
            solPOW.isHidden = true
            solPOW2.isHidden = true
                b.isHidden = true
            assassinPow.isUserInteractionEnabled = false
            assassinPOW2.isUserInteractionEnabled = false
            assassinPow.isHidden = false
            assassinPOW2.isHidden = false
                assassinPow.zPosition = 1
                assassinPow.position = CGPoint(x: frame.size.width/1.3, y: frame.size.height/2)
                assassinPow.fontSize = 15.0
            assassinPow.fontColor = UIColor.black
                assassinPow.name = "assassinPOWER2"
                addChild(assassinPow)
                assassinPOW2.zPosition = 1
                assassinPOW2.position = CGPoint(x: frame.size.width/1.3, y: frame.size.height/2.5)
                assassinPOW2.fontSize = 15.0
                assassinPOW2.fontColor = UIColor.black
                assassinPOW2.name = "assassinPOWER"
                addChild(assassinPOW2)

        }
        if  mage.isHidden == false{
                classic.isHidden = true
            solPOW.isHidden = true
            solPOW2.isHidden = true
                b.isHidden = true
            assassinPow.isHidden = true
            assassinPOW2.isHidden = true
            megpower2.isHidden = false
            megpower.isHidden = false
            
                megpower.zPosition = 1
                megpower.position = CGPoint(x: frame.size.width/1.3, y: frame.size.height/2)
                megpower.fontSize = 15.0
            megpower.fontColor = UIColor.black
                megpower.name = "mage1"
                addChild(megpower)
                megpower2.zPosition = 1
                megpower2.position = CGPoint(x: frame.size.width/1.3, y: frame.size.height/2.5)
                megpower2.fontSize = 15.0
                megpower2.fontColor = UIColor.black
                megpower2.name = "mage2"
                addChild(megpower2)

        }
        scrool.position = CGPoint(x: frame.size.width/1.3, y: frame.size.height/2)
        scrool.size = CGSize(width: frame.size.width/4, height: frame.size.height/1)
        addChild(scrool)
    }
    func MONROUNDONE() {
        monster.position = CGPoint(x: frame.size.width/1.6, y: frame.size.height/7.7)
        monster.size = CGSize(width: frame.size.width/5, height: frame.size.height/4)
        addChild(monster)
        monstertext.position  = CGPoint(x: frame.size.width/1.9, y: frame.size.height/3.4)
        monstertext.fontSize = 30.0
        monstertext.removeFromParent()
        monstertext.fontColor  =  UIColor.black
        addChild(monstertext)
        
    }
    func label()  {
        pertext.position = CGPoint(x: frame.size.width/4.5, y: frame.size.height/3.5)
        pertext.fontSize = 30.0
        pertext.fontColor  = UIColor.black
        addChild(pertext)
    }
    func people()  {
        sol.isHidden = true
        assassin.isHidden = true
        mage.isHidden = true
        levfive_weapon.isHidden = true
        normal.position = CGPoint(x: frame.size.width/4, y: frame.size.height/7.7)
        normal.size = CGSize(width: frame.size.width/5, height: frame.size.height/4)
        addChild(normal)
        if UserDefaults.standard.integer(forKey: "Number") >= 5 {
            sol.isHidden = true
            assassin.isHidden = true
            mage.isHidden = true
            normal.isHidden = false
            levfive_weapon.isHidden = true
            levfive_weapon.position = CGPoint(x: frame.size.width/4, y: frame.size.height/7.7)
            levfive_weapon.size = CGSize(width: frame.size.width/6, height: frame.size.height/6.5)
            PEW.position = CGPoint(x: frame.size.width/3.9, y: frame.size.height/7.7)
            PEW.size = CGSize(width: frame.size.width/5, height: frame.size.height/4)
            PEW.isHidden = true
            addChild(PEW)
            addChild(levfive_weapon)

        }

        if UserDefaults.standard.integer(forKey: "Number") >= 10{
            normal.isHidden  = true
            assassin.isHidden = true
            mage.isHidden = true
            levfive_weapon.isHidden = true
            sol.position = CGPoint(x: frame.size.width/4, y: frame.size.height/7.7)
            sol.size = CGSize(width: frame.size.width/5, height: frame.size.height/4)
            sol.isHidden = false
            addChild(sol)
        }
        if UserDefaults.standard.integer(forKey: "Number") >= 25{
            normal.isHidden = true
            sol.isHidden = true
            mage.isHidden = true
            levfive_weapon.isHidden = true
            assassin.isHidden = false
            assassin.position = CGPoint(x: frame.size.width/4, y: frame.size.height/7.7)
            assassin.size = CGSize(width: frame.size.width/5, height: frame.size.height/4)
            addChild(assassin)
        }
        if UserDefaults.standard.integer(forKey: "Number") >= 50{
            normal.isHidden = true
            sol.isHidden = true
            mage.isHidden = false
            levfive_weapon.isHidden = true
            assassin.isHidden = true
            mage.position = CGPoint(x: frame.size.width/4, y: frame.size.height/7.7)
            mage.size = CGSize(width: frame.size.width/5, height: frame.size.height/4)
            first.position = CGPoint(x: frame.size.width/3.9, y: frame.size.height/7.7)
            first.size = CGSize(width: frame.size.width/5, height: frame.size.height/4)
            first.isHidden = true
            addChild(first)
            addChild(mage)
        }




  
        
    }
       override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
           for touch in touches {
                          let location = touch.location(in: self)
                          let touchedNode = atPoint(location)
            if oneTime == 0{
              if touchedNode.name == "BIG_BOI"{
                levfive_weapon.isHidden = false
                                      PEW.isHidden = false
                      let fadeIN = SKAction.fadeIn(withDuration: 3)
                let fade = SKAction.fadeOut(withDuration: 1.3)
                let fadeout = SKAction.fadeOut(withDuration: 3)
                
                    let leftMove = SKAction.moveTo(x: monster.position.x + 1, duration:1.5)
                let rocketAnim = SKAction.animate(with:norm , timePerFrame: 1.5)
                  let bounce = SKAction.sequence([leftMove,rocketAnim,fade])
                      PEW.run(bounce)
                levfive_weapon.run(fadeout)
                  monHEATH  = monHEATH - 100
                      updatescore()
                                      oneTime += 1
                                  
                                      
                  

            }
            }
               if touchedNode.name == "classic"{
                   let number = Int.random(in: 0 ..< 100)
                   if number < 70{
                      
                       let leftMove = SKAction.moveTo(x: frame.size.width/4, duration:0.9)
                       let rightMove = SKAction.moveTo(x:monster.position.x + 1, duration: 0.9)
                       let rocketAnim = SKAction.animate(with:normalArray , timePerFrame: 0.016)
                  let bounce = SKAction.sequence([rightMove,rocketAnim, leftMove])
                       
                       normal.run(bounce)
                       monHEATH3  = monHEATH3 - 20
                       updatescore()

                   }
                   else {
              
                       let leftMove = SKAction.moveTo(x: normal.position.x - 1, duration: 0.9)
                       let rightMove = SKAction.moveTo(x:frame.size.width/1.6, duration: 0.9)
                       let rocketAnim = SKAction.animate(with: rocketAnimArray, timePerFrame: 0.016)
                       let bounce = SKAction.sequence([leftMove,rocketAnim,rightMove])
                            monster.run(bounce)
                       personHEATH3  = personHEATH3 - 30
                                  update()
                   }

                   
               }
               if touchedNode.name == "sol2"{
                    let number = Int.random(in: 0 ..< 100)
                    if number < 40{
                  
                       let leftMove = SKAction.moveTo(x: frame.size.width/4, duration: 0.9)
                       let rightMove = SKAction.moveTo(x:monster.position.x + 1, duration: 0.9)
                                           let rocketAnim = SKAction.animate(with: solArray, timePerFrame: 0.016)
                       let bounce = SKAction.sequence([rightMove,rocketAnim, leftMove])
                            sol.run(bounce)
                       monHEATH3  = monHEATH3 - 50
                                      updatescore()
                    }
                    else {
                   
                             let leftMove = SKAction.moveTo(x: frame.size.width/3.5, duration: 0.9)
                       let rightMove = SKAction.moveTo(x:sol.position.x - 1, duration: 0.9)
                                   let rocketAnim = SKAction.animate(with: rocketAnimArray, timePerFrame: 0.016)
                                   let bounce = SKAction.sequence([leftMove,rocketAnim,rightMove])
                                        monster.run(bounce)
                       personHEATH3  = personHEATH3 - 30
                                       update()
                    }

                    
                }
               if touchedNode.name == "sol"{
                    let number = Int.random(in: 0 ..< 100)
                    if number < 75{
                
                       let leftMove = SKAction.moveTo(x: frame.size.width/4, duration: 0.9)
                       let rightMove = SKAction.moveTo(x:monster.position.x + 1, duration: 0.9)
                                           let rocketAnim = SKAction.animate(with: solArray, timePerFrame: 0.016)
                       let bounce = SKAction.sequence([rightMove,rocketAnim, leftMove])
                            sol.run(bounce)
                       monHEATH3  = monHEATH3 - 25
                                    updatescore()
                    }
                    else {
             
                       let leftMove = SKAction.moveTo(x: sol.position.x - 1, duration: 0.9)
                                   let rightMove = SKAction.moveTo(x:frame.size.width/1.6, duration: 0.9)
                                   let rocketAnim = SKAction.animate(with: rocketAnimArray, timePerFrame: 0.016)
                                   let bounce = SKAction.sequence([leftMove,rocketAnim,rightMove])
                                        monster.run(bounce)
                       personHEATH3  = personHEATH3 - 30
                                 update()
                    }

                    
                }
                if touchedNode.name == "b"{
                    let number = Int.random(in: 0 ..< 100)
                    if number < 35{
                   
         let leftMove = SKAction.moveTo(x: frame.size.width/4, duration:0.9)
         let rightMove = SKAction.moveTo(x:monster.position.x + 1, duration: 0.9)
         let rocketAnim = SKAction.animate(with:normalArray , timePerFrame: 0.016)
    let bounce = SKAction.sequence([rightMove,rocketAnim, leftMove])
         normal.run(bounce)
                       monHEATH3  = monHEATH3 - 50
                                       updatescore()
                        
                    }
                    else {
                
                       let leftMove = SKAction.moveTo(x: normal.position.x - 1, duration: 0.9)
                                  let rightMove = SKAction.moveTo(x:frame.size.width/1.6, duration: 0.9)
                                  let rocketAnim = SKAction.animate(with: rocketAnimArray, timePerFrame: 0.016)
                                  let bounce = SKAction.sequence([leftMove,rocketAnim,rightMove])
                                       monster.run(bounce)
                       personHEATH3  = personHEATH3 - 30
                                    update()
                        
                    }
                }
               if touchedNode.name == "mage1"{
                   
                                   let number = Int.random(in: 0 ..< 100)
                                   if number < 40{
                                      
                                       first.isHidden = false
                       let fadeIN = SKAction.fadeIn(withDuration: 3)
                       let fade = SKAction.fadeOut(withDuration: 1)
                                       let leftMove = SKAction.moveTo(x: monster.position.x + 1, duration:1.5)
                        let rocketAnim = SKAction.animate(with:megArray , timePerFrame: 0.060)
                   let bounce = SKAction.sequence([leftMove,rocketAnim,fade])
                       first.run(bounce)
                   monHEATH3  = monHEATH3 - 100
                       updatescore()
                                       
                                   }
                                       
                   else {
             
                           let leftMove = SKAction.moveTo(x: mage.position.x - 1, duration: 0.9)
                                 let rightMove = SKAction.moveTo(x:frame.size.width/1.6, duration: 0.9)
                                 let rocketAnim = SKAction.animate(with: rocketAnimArray, timePerFrame: 0.016)
                                 let bounce = SKAction.sequence([leftMove,rocketAnim,rightMove])
                                      monster.run(bounce)
                                       personHEATH3  = personHEATH3 - 30
                                                 update()
                       
                   }
               }
                   if touchedNode.name == "mage2"{
                                       let number = Int.random(in: 0 ..< 100)
                                       if number <= 70{
                                 
                            
                                                first.isHidden = false
                                let fadeIN = SKAction.fadeIn(withDuration: 3)
                                let fade = SKAction.fadeOut(withDuration: 1)
                           let leftMove = SKAction.moveTo(x: monster.position.x + 1, duration:1.5)
                                 let rocketAnim = SKAction.animate(with:megArray , timePerFrame: 0.060)
                            let bounce = SKAction.sequence([leftMove,rocketAnim,fade])
                                first.run(bounce)
                                           monHEATH3  = monHEATH3 - 30
                                                                         updatescore()
                                           
                                       }
                       else {
                   
                               let leftMove = SKAction.moveTo(x: mage.position.x - 1, duration: 0.5)
                                     let rightMove = SKAction.moveTo(x:frame.size.width/1.6, duration: 0.5)
                                     let rocketAnim = SKAction.animate(with: rocketAnimArray, timePerFrame: 0.016)
                                     let bounce = SKAction.sequence([leftMove,rocketAnim,rightMove])
                                          monster.run(bounce)
                                           personHEATH3  = personHEATH3 - 30
                                                           update()
                           
                       }
               }
                   if touchedNode.name == "assassinPOWER2"{
                               let number = Int.random(in: 0 ..< 100)
                               if number < 50{
                                
                                  let leftMove = SKAction.moveTo(x: frame.size.width/4, duration: 0.9)
                                  let rightMove = SKAction.moveTo(x:monster.position.x + 1, duration: 0.9)
                                                      let rocketAnim = SKAction.animate(with: assassinArray, timePerFrame: 0.016)
                                  let bounce = SKAction.sequence([rightMove,rocketAnim, leftMove])
                                       assassin.run(bounce)
                               monHEATH3  = monHEATH3 - 50
                                                            updatescore()
                               }
                               else {
                               
                                   let leftMove = SKAction.moveTo(x: assassin.position.x - 1, duration: 0.9)
                                              let rightMove = SKAction.moveTo(x:frame.size.width/1.6, duration: 0.9)
                                              let rocketAnim = SKAction.animate(with: rocketAnimArray, timePerFrame: 0.016)
                                              let bounce = SKAction.sequence([leftMove,rocketAnim,rightMove])
                                                   monster.run(bounce)
                                   personHEATH3  = personHEATH3 - 30
                                                               update()
                               }

                               
                           }
                        if touchedNode.name == "assassinPOWER"{
                                            let number = Int.random(in: 0 ..< 100)
                                            if number <= 20{
                                 let leftMove = SKAction.moveTo(x: frame.size.width/4, duration:0.5)
                                 let rightMove = SKAction.moveTo(x:monster.position.x + 1, duration: 0.5)
                                 let rocketAnim = SKAction.animate(with:assassinArray , timePerFrame: 0.016)
                            let bounce = SKAction.sequence([rightMove,rocketAnim, leftMove])
                                 assassin.run(bounce)
                                               monHEATH3  = monHEATH3 - 10000
                                               updatescore()

                                            }
                                                
                                            
                            else {
                          
                                    let leftMove = SKAction.moveTo(x: assassin.position.x - 1, duration: 0.5)
                                          let rightMove = SKAction.moveTo(x:frame.size.width/1.6, duration: 0.5)
                                          let rocketAnim = SKAction.animate(with: rocketAnimArray, timePerFrame: 0.016)
                                          let bounce = SKAction.sequence([leftMove,rocketAnim,rightMove])
                                               monster.run(bounce)
                                               personHEATH3  = personHEATH3 - 30
                                                                      update()
                                               
                                
                            }
                           
                    }

           
               
       }
       }
    override func update(_ currentTime: TimeInterval) {
        if personHEATH3 <= 0{
            let duede = GameScene(size: view!.bounds.size)
            view?.presentScene(duede)
            personHEATH3 = 100
            
            
        }
        if monHEATH3 <= 0{
            UserDefaults.standard.integer(forKey: "")
            personHEATH3 = 800
            if UserDefaults.standard.bool(forKey: "TimerON") == true{
                UserDefaults.standard.set(exp + 6000, forKey: "RANK")
                 exp  = UserDefaults.standard.integer(forKey: "RANK")
                viewexp += 6000
                let duede = GameScene(size: view!.bounds.size)
                      view?.presentScene(duede)
            }
            else{
            UserDefaults.standard.set(exp + 3000, forKey: "RANK")
             exp  = UserDefaults.standard.integer(forKey: "RANK")
            viewexp += 3000
                let duede = GameScene(size: view!.bounds.size)
                      view?.presentScene(duede)
            }
        }
        time = 3
    }

}

