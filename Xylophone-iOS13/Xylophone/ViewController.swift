//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    private var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        playSound(fileName: sender.currentTitle!)
    }
    
    func playSound(fileName:String, fileExtension:String = "wav") {
        let url = Bundle.main.url(forResource: fileName, withExtension: fileExtension)
        player = try! AVAudioPlayer(contentsOf: url!)
        player?.play()
        
    }

}

