//
//  singleton.swift
//  2015-F
//
//  Created by 木下　和巳 on 2/15/16.
//  Copyright © 2016 ie-ModelingAndDesign. All rights reserved.
//

import Foundation
import AVFoundation

class MusicHelper {
    static let sharedHelper = MusicHelper()
    var audioPlayer: AVAudioPlayer?
    
    func playBackgroundMusic() {
        let aSound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("見慣れた光景", ofType: "mp3")!)
        do {
            audioPlayer = try AVAudioPlayer(contentsOfURL:aSound)
            audioPlayer!.numberOfLoops = -1
            audioPlayer!.prepareToPlay()
            audioPlayer!.play()
        } catch {
            print("Cannot play the file")
        }
    }
}