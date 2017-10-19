//
//  ViewController.swift
//  TopiMagjik
//
//  Created by Adriat Ahmeti on 10/18/17.
//  Copyright © 2017 Adriat Ahmeti. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var fotoTopi: UIImageView!
    
    var topi = ["topi1", "topi2", "topi3", "topi4", "topi5"]
    var playAudio:AVAudioPlayer = try! AVAudioPlayer(contentsOf: Bundle.main.url(forResource: "pergjigja", withExtension: "wav")!)

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func detyra(){
        var randomNumber = Int(arc4random_uniform(UInt32(topi.count)))
        var top = topi[randomNumber]
       // var file = Bundle.main.url(forResource: "pergjigja", withExtension: "wav")
        fotoTopi.image = UIImage.init(named: top)
        //playAudio = try! AVAudioPlayer(contentsOf: play!)
        playAudio.play()
    }
    
    @IBAction func buLuaj(_ sender: Any) {
        detyra()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if motion == UIEventSubtype.motionShake {
            detyra()
        }
    }
}

