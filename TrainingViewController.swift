//
//  TrainingViewController.swift
//  2015-F
//
//  Created by 木下　和巳 on 11/21/15.
//  Copyright © 2015 ie-ModelingAndDesign. All rights reserved.
//

import Foundation
import UIKit
import CoreMotion
import AVFoundation


class HukkinGyro: UIViewController {
    
    var motionManager = CMMotionManager()
    var count:Int = 0
    var audioPlayer: AVAudioPlayer = try! AVAudioPlayer(contentsOfURL: NSBundle.mainBundle().URLForResource("j-27", withExtension: "mp3")!)
    
    var delegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        _ = AppSetting()
        
        // Do any additional setup after loading the view, typically from a nib.
        
        let myLabel: UILabel = UILabel(frame: CGRectMake(0,0,300,200))
        myLabel.backgroundColor = UIColor.orangeColor()
        myLabel.textAlignment = NSTextAlignment.Center
        myLabel.layer.position = CGPoint(x: self.view.bounds.width/2,y: 500)
        self.view.addSubview(myLabel)
        myLabel.text = String(count)
        
        motionManager.gyroUpdateInterval = 1
        
        motionManager.startGyroUpdates()
        
        
        //Start recording data
        motionManager.startGyroUpdatesToQueue(NSOperationQueue.currentQueue()!) {
            (gyroData , error) in
            
            
            
            if (gyroData!.rotationRate.y > 1.0){
                self.count = self.count + 1
                myLabel.text = String(self.count)
                if ( self.count == 5){
                    self.audioPlayer.play()
                    self.onClickPlayButton()
                }
            }
        }
    }
    
    internal func onClickPlayButton(){
        let setting = AppSetting()
        let yy = setting.list
        let zz = yy.indexOf("Hukkin1")
        selectT(yy[zz!+1],view: self)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

class Haikin1: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let playButton = UIButton()
        playButton.frame = CGRectMake(0,0,250,100)
        playButton.backgroundColor = UIColor.redColor()
        playButton.layer.masksToBounds = true
        playButton.setTitle("スタート", forState: UIControlState.Normal)
        playButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        playButton.setTitle("スタート", forState: UIControlState.Highlighted)
        playButton.setTitleColor(UIColor.blackColor(), forState: UIControlState.Highlighted)
        playButton.setImage(UIImage(named: "switch.png"),forState: UIControlState.Normal)
        playButton.layer.cornerRadius = 20.0
        playButton.layer.position = CGPoint(x: self.view.frame.width/2, y:500)
        playButton.addTarget(self, action: "onClickListButton:", forControlEvents: .TouchUpInside)
        self.view.addSubview(playButton)
    }
    
    internal func onClickListButton(sender: UIButton){
        let menu: UIViewController = MenuViewController()
        self.presentViewController(menu, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


class TwistViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let playButton = UIButton()
        playButton.frame = CGRectMake(0,0,250,100)
        playButton.backgroundColor = UIColor.redColor()
        playButton.layer.masksToBounds = true
        playButton.setTitle("スタート", forState: UIControlState.Normal)
        playButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        playButton.setTitle("スタート", forState: UIControlState.Highlighted)
        playButton.setTitleColor(UIColor.blackColor(), forState: UIControlState.Highlighted)
        playButton.setImage(UIImage(named: "switch.png"),forState: UIControlState.Normal)
        playButton.layer.cornerRadius = 20.0
        playButton.layer.position = CGPoint(x: self.view.frame.width/2, y:500)
        playButton.addTarget(self, action: "onClickListButton:", forControlEvents: .TouchUpInside)
        self.view.addSubview(playButton)
    }
    
    internal func onClickListButton(sender: UIButton){
        let menu: UIViewController = MenuViewController()
        self.presentViewController(menu, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

class SquatViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let playButton = UIButton()
        playButton.frame = CGRectMake(0,0,250,100)
        playButton.backgroundColor = UIColor.redColor()
        playButton.layer.masksToBounds = true
        playButton.setTitle("スタート", forState: UIControlState.Normal)
        playButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        playButton.setTitle("スタート", forState: UIControlState.Highlighted)
        playButton.setTitleColor(UIColor.blackColor(), forState: UIControlState.Highlighted)
        playButton.setImage(UIImage(named: "switch.png"),forState: UIControlState.Normal)
        playButton.layer.cornerRadius = 20.0
        playButton.layer.position = CGPoint(x: self.view.frame.width/2, y:500)
        playButton.addTarget(self, action: "onClickListButton:", forControlEvents: .TouchUpInside)
        self.view.addSubview(playButton)
    }
    
    internal func onClickListButton(sender: UIButton){
        let menu: UIViewController = MenuViewController()
        self.presentViewController(menu, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


