//
//  GameViewController.swift
//  Pong
//
//  Created by Kevin Chen on 12/31/2018.
//  Copyright © 2018 New York University. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

var currentGameType = gameType.medium

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let view = self.view as! SKView? {
            // Load the SKScene from 'GameScene.sks'
            if let scene = SKScene(fileNamed: "GameScene") {
                // Set the scale mode to scale to fit the window
                scene.scaleMode = .aspectFill
                
                scene.size = view.bounds.size
                
                // Present the scene
                view.presentScene(scene)
            }
            
            view.ignoresSiblingOrder = true
            
            view.showsFPS = true
            view.showsNodeCount = true
        }
    }
    
    @IBAction func goBack(_ sender: Any) {
        let gameVC = self.storyboard?.instantiateViewController(withIdentifier: "menuVC") as! MenuVC
        self.navigationController?.pushViewController(gameVC, animated: true)
    }
    

    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
