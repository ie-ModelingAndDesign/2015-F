//
//  AllClearViewController.swift
//  2015-F
//
//  Created by 木下　和巳 on 12/8/15.
//  Copyright © 2015 ie-ModelingAndDesign. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation


class AllClearViewController: UIViewController {
    
    
    var cnt : Int = 0
    var tune:AVAudioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //play backbround music
        MusicHelper.sharedHelper.playBackgroundMusic()
        
        //perfect music
        let tuneURL:NSURL = NSBundle.mainBundle().URLForResource("perfect", withExtension: "wav")!
        do { tune = try AVAudioPlayer(contentsOfURL: tuneURL, fileTypeHint: nil) } catch let error as NSError {
            print(error.description)
        }
        tune.numberOfLoops = 1
        tune.prepareToPlay()
        tune.play()
        
        
        
        //背景画面
        let myImage = UIImage(named: "AllClear.jpg")
        let myImageView = UIImageView()
        myImageView.image = myImage!
        myImageView.frame = CGRectMake(0, 0, self.view.bounds.width,self.view.bounds.height)
        self.view.addSubview(myImageView)

        
        NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: "onUpdate:", userInfo: nil, repeats: true)
    }
    
    func onUpdate(timer : NSTimer){
        
        cnt += 1
        if(cnt == 5){
            self.onClickPlayButton()
        }
    }
    
    internal func onClickPlayButton(){
        let story3: UIViewController =  MenuViewController()
        self.presentViewController(story3, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
