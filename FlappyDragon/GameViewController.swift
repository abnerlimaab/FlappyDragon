//
//  GameViewController.swift
//  FlappyDragon
//
//  Created by Abner Lima on 28/05/23.
//

import UIKit
import SpriteKit
import GameplayKit

var stage: SKView!

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        stage = view as! SKView
        stage.ignoresSiblingOrder = true
        
        presentScene()
    }
    
    func presentScene() {
        let scene = GameScene(size: CGSize(width: 320, height: 568))
        scene.scaleMode = .aspectFill
        stage.presentScene(scene)
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
