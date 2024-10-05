//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import AVFoundation
import UIKit

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func pressButton(_ sender: UIButton) {
        let delay: Double = 0.2
        UIView.animate(withDuration: 0.3) {
            sender.alpha = 0.5
        }
        
        playSound(sender.currentTitle!)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
            UIView.animate(withDuration: 0.3) {
                sender.alpha = 1.0
            }
        }
    }
    
    func playSound(_ tone: String) {
        let url = Bundle.main.url(forResource: tone, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    

}

