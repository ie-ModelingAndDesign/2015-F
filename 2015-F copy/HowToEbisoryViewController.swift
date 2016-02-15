//
//  HowToEbisoryViewController.swift
//  2015-F
//
//  Created by 木下　和巳 on 12/8/15.
//  Copyright © 2015 ie-ModelingAndDesign. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation

class HowToEbisoryViewController: UIViewController {
    var playerItem : AVPlayerItem!
    var videoPlayer : AVPlayer!
    var seekBar : UISlider!
    var tune:AVAudioPlayer = AVAudioPlayer()
    var three21:AVAudioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        
        //play backbround music
        MusicHelper.sharedHelper.playBackgroundMusic()
        
        let myImage = UIImage(named: "ebisory.jpg")
        let myImageView = UIImageView()
        myImageView.image = myImage!
        myImageView.frame = CGRectMake(0, 0, self.view.bounds.width,self.view.bounds.height)
        self.view.addSubview(myImageView)

        //やり方の指示音
        let tuneURL:NSURL = NSBundle.mainBundle().URLForResource("haikintaikan", withExtension: "wav")!
        do { tune = try AVAudioPlayer(contentsOfURL: tuneURL, fileTypeHint: nil) } catch let error as NSError {
            print(error.description)
        }
        tune.numberOfLoops = 1
        tune.prepareToPlay()
        tune.play()
        
        //321のカウント
        let tuneURL2:NSURL = NSBundle.mainBundle().URLForResource("321", withExtension: "wav")!
        do { three21 = try AVAudioPlayer(contentsOfURL: tuneURL2, fileTypeHint: nil) } catch let error as NSError {
            print(error.description)
        }
        

        //やり方label
        let howtoLabel: UILabel = UILabel(frame: CGRectMake(0,0,100,50))
        howtoLabel.backgroundColor = UIColor.grayColor()
        howtoLabel.text = "やり方"
        howtoLabel.textColor = UIColor.whiteColor()
        howtoLabel.textAlignment = NSTextAlignment.Center
        howtoLabel.layer.position = CGPoint(x: self.view.bounds.width/3,y: 100)
        self.view.addSubview(howtoLabel)
        
        //next button
        let saveButton: UIButton = UIButton(frame: CGRectMake(0,0,100,50))
        let buttonImage:UIImage = UIImage(named: "next.png")!;
        saveButton.setBackgroundImage(buttonImage, forState: UIControlState.Normal);
        saveButton.layer.masksToBounds = true
        saveButton.layer.cornerRadius = 20.0
        saveButton.layer.position = CGPoint(x: 350 , y: 650)
        saveButton.addTarget(self, action: "onClickSaveButton:", forControlEvents: .TouchUpInside)
        self.view.addSubview(saveButton)
        
        
    }
    
    internal func onClickSaveButton(sender: UIButton){
        tune.stop()
        three21.play()
        let mySecondViewController: EbisoryViewController = EbisoryViewController()
        mySecondViewController.modalTransitionStyle = UIModalTransitionStyle.PartialCurl
        self.presentViewController(mySecondViewController, animated: true, completion: nil)
    }
}

