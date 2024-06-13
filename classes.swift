//
//  classes.swift
//  Clubpen
//
//  Created by Jaden Velasco on 4/12/20.
//  Copyright © 2020 Jaden Velasco. All rights reserved.
//

import SpriteKit
class classessss: SKScene{
    let mage = SKSpriteNode(imageNamed: "mage")
    let rightArrow = SKSpriteNode(imageNamed: "right arrow")
    let leftArrow = SKSpriteNode(imageNamed: "left arrow")
    let magedes = SKLabelNode(text: "WEAPON: STAFF OF MEH")
    let megpower = SKLabelNode(text: "bling dog : maybe a lot 100 damage but 40% chance hit ")
    let megpower2 = SKLabelNode(text: "swiftness of MEH : 75% chance of hit 30 damage hit")
    
    let rightArrow1 = SKSpriteNode(imageNamed: "right arrow")
    let rankMage = SKLabelNode(text: "RANK 50 ")
    let assassin = SKSpriteNode(imageNamed: "assassin")
    let assassinDes = SKLabelNode(text: "WEAPON: little STABBE THINGE")
   let assassinPow = SKLabelNode(text: "DING DONG : 50 damage  40 % hit")
    let assassinPOW2 = SKLabelNode(text: "THE BUZZCUT : 5% chance you chop his head off")
    let assassinRank = SKLabelNode(text: "RANK 25")
    let assassineq = SKLabelNode(text: "Your class")
    let eq = SKLabelNode(text: "THE FINAL IS NOW YOURS")
    let sol = SKSpriteNode(imageNamed: "war0")
    let solDes = SKLabelNode(text: "WEAPON: tommy gun")
    let solPOW = SKLabelNode(text: "PEW pew pew its.. : sliced  ")
    let solPOW2 = SKLabelNode(text: "oof : HIT head 50 damage 50% chance ")
    let solRank = SKLabelNode(text: "RANK 10")
    let SOlequpped = SKLabelNode(text: "your class")
    
    
    
    
    
    
    override func didMove(to view: SKView) {
        mageClass()
        arrow()
        solr()
        assassinClass()
        out()
    }
    func out()  {
        rightArrow1.position = CGPoint(x: frame.size.width/1.07, y:frame.size.height/1.2)
        rightArrow1.size  = CGSize(width: frame.size.width/10, height: frame.size
            .height/15)
        rightArrow1.name = "other righy"
        addChild(rightArrow1)
    }
    func arrow() {
        leftArrow.position = CGPoint(x: frame.size.width/6, y: frame.size.height/2)
        leftArrow.size = CGSize(width: frame.size.width/6, height: frame.size.height/9)
        leftArrow.name  = "left"
        addChild(leftArrow)
        rightArrow.name = "right"
        rightArrow.position = CGPoint(x: frame.size.width/1.3, y: frame.size.height/2)
        rightArrow.size = CGSize(width: frame.size.width/6, height: frame.size.height/9)
        addChild(rightArrow)
    }
    func mageClass() {
        mage.position = CGPoint(x: frame.size.width/2, y: frame.size.height/2)
        mage.size = CGSize(width: frame.size.width/4, height: frame.size.height/4)
        addChild(mage)
        magedes.position =  CGPoint(x: frame.size.width/2, y: frame.size.height/1.3)
        magedes.fontSize = 30.0
        addChild(magedes)
        megpower.position = CGPoint(x: frame.size.width/2, y: frame.size.height/3.5)
        megpower.fontSize =  20.0
        addChild(megpower)
        megpower2.position = CGPoint(x: frame.size.width/2 , y: frame.size.height/4)
        megpower2.fontSize = 20.0
        addChild(megpower2)
        rankMage.position = CGPoint(x: frame.size.width/2, y: frame.size.height/6)
        rankMage.fontSize = 40.0
        eq.isHidden = true
        addChild(rankMage)
        if UserDefaults.standard.integer(forKey: "Number") <= 50 {
            rankMage.isHidden = true
            eq.isHidden  = false
            eq.position = CGPoint(x: frame.size.width/2, y: frame.size.height/6)
            eq.fontSize = 40.0
            addChild(eq)
        }
    }
    func assassinClass()  {
        assassin.isHidden = true
        assassin.position = CGPoint(x: frame.size.width/2, y: frame.size.height/2)
        assassin.size = CGSize(width: frame.size.width/4, height: frame.size.height/4)
        addChild(assassin)
        assassinDes.position = CGPoint(x: frame.size.width/2, y: frame.size.height/1.3)
        assassinDes.fontSize = 30.0
        assassinDes.isHidden = true
        addChild(assassinDes)
        assassinPow.position = CGPoint(x: frame.size.width/2, y: frame.size.height/3.5)
        assassinPow.fontSize = 20.0
        assassinPow.isHidden = true
        addChild(assassinPow)
        assassinPOW2.position = CGPoint(x: frame.size.width/2, y: frame.size.height/4)
        assassinPOW2.fontSize = 20.0
        assassinPOW2.isHidden = true
        addChild(assassinPOW2)
        assassinRank.position = CGPoint(x: frame.size.width/2, y: frame.size.height/6)
        assassinRank.fontSize = 40.0
        assassinRank.isHidden = true
        addChild(assassinRank)
        if UserDefaults.standard.integer(forKey: "Number") <= 25{
            assassinRank.isHidden  = true
            assassineq.position = CGPoint(x: frame.size.width/2, y: frame.size.height/6)
            assassineq.fontSize = 40.0
            assassineq.isHidden = true
            addChild(assassineq)
        }
        
    }
    func solr(){
        sol.isHidden = true
        sol.position = CGPoint(x: frame.size.width/2, y: frame.size.height/2)
        sol.size = CGSize(width: frame.size.width/4, height: frame.size.height/4)
        addChild(sol)
        solDes.position = CGPoint(x: frame.size.width/2, y: frame.size.height/1.3)
        solDes.fontSize = 30.0
        solDes.isHidden = true
        addChild(solDes)
        solPOW.position = CGPoint(x: frame.size.width/2, y: frame.size.height/3.5)
        solPOW.fontSize = 20.0
        solPOW.isHidden = true
        addChild(solPOW)
        solPOW2.position = CGPoint(x: frame.size.width/2, y: frame.size.height/4)
        solPOW2.fontSize = 20.0
        solPOW2.isHidden = true
        addChild(solPOW2)
        solRank.position = CGPoint(x: frame.size.width/2, y: frame.size.height/6)
        solRank.fontSize = 40.0
        solRank.isHidden = true
        addChild(solRank)
        if UserDefaults.standard.integer(forKey: "Number") <= 10{
            sol.isHidden  = true
            SOlequpped.position = CGPoint(x: frame.size.width/2, y: frame.size.height/6)
            SOlequpped.fontSize = 40.0
            SOlequpped.isHidden = true
            addChild(SOlequpped)
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
           for touch in touches {
                        let location = touch.location(in: self)
                        let touchedNode = atPoint(location)
            if touchedNode.name == "left"{
                if mage.isHidden == false{
                mage.isHidden = true
                magedes.isHidden = true
                megpower.isHidden = true
                megpower2.isHidden = true
                    eq.isHidden = true
                    rankMage.isHidden = true

                assassinPOW2.isHidden = false
                assassinPow.isHidden = false
                assassin.isHidden = false
                assassinDes.isHidden = false
                    if UserDefaults.standard.integer(forKey: "Number") >= 25{
                        assassineq.isHidden = false
                                            }
                    else{
                        assassinRank.isHidden = false
                        
                        
                    }
                }
                else{
                    assassinPOW2.isHidden = true
                    assassinPow.isHidden = true
                    assassin.isHidden = true
                    assassinDes.isHidden = true
                    assassineq.isHidden = true
                    assassinRank.isHidden = true
  
                    solDes.isHidden = false
                    if UserDefaults.standard.integer(forKey: "Number") >= 10{
                        SOlequpped.isHidden = false
                        solRank.isHidden = true
                    }
                    else{
                    solRank.isHidden = false
                        SOlequpped.isHidden = true
                    }
                    sol.isHidden = false
                    solPOW2.isHidden = false
                    solPOW.isHidden = false
                }


                
            }
            if touchedNode.name == "right"{
                if mage.isHidden == false{
                    if assassin.isHidden == true{
                        if sol.isHidden == true{
                    mage.isHidden = true
                    magedes.isHidden = true
                    megpower.isHidden = true
                    megpower2.isHidden = true
                    eq.isHidden = true
                    rankMage.isHidden = true
    
                    solDes.isHidden = false
                    if UserDefaults.standard.integer(forKey: "Number") >= 10{
                        SOlequpped.isHidden = false
                        solRank.isHidden = true
                        
                    }
                    else{
                    solRank.isHidden = false
                        SOlequpped.isHidden = true
                    }
                    sol.isHidden = false
                    solPOW2.isHidden = false
                    solPOW.isHidden = false
                        }
                }
                }
                if mage.isHidden == true{
                    if assassin.isHidden == true{
                        if sol.isHidden == false{
                    solDes.isHidden = true
                    SOlequpped.isHidden = true
                    solRank.isHidden = true
                    sol.isHidden = true
                    solPOW2.isHidden = true
                    solPOW.isHidden = true
                    assassinPOW2.isHidden = false
                    assassinPow.isHidden = false
                    assassin.isHidden = false
                    assassinDes.isHidden = false
                if UserDefaults.standard.integer(forKey: "Number") >= 25{
                            assassineq.isHidden = false
                    assassinRank.isHidden  = true
                        }
                        else{
                            assassinRank.isHidden = false
                    assassineq.isHidden = true
                            }
                        }
                    }
                }
                if mage.isHidden == true{
                    if assassin.isHidden == false{
                    mage.isHidden = false
                      magedes.isHidden = false
                      megpower.isHidden = false
                      megpower2.isHidden = false
                            if UserDefaults.standard.integer(forKey: "Number") >= 50{
                              eq.isHidden = false
                                rankMage.isHidden = true
                          }
                          else{
                      rankMage.isHidden = false
                                eq.isHidden = true
                            
                          }
                    assassinPOW2.isHidden = true
                         assassinPow.isHidden = true
                         assassin.isHidden = true
                         assassinDes.isHidden = true
                    assassineq.isHidden = true
                    assassinRank.isHidden = true
                    solDes.isHidden = true
                    if RandNumber >= 10{
                        SOlequpped.isHidden = true
                    }
                    else{
                    solRank.isHidden = true
                    }
                    sol.isHidden = true
                    solPOW2.isHidden = true
                    solPOW.isHidden = true
                    }
                }
                
            }
            if touchedNode.name == "other righy"{
                let hahah = GameScene(size: view!.bounds.size)
                view?.presentScene(hahah)
            }


                
            
        }
    }

}
