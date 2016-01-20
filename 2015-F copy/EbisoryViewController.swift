//
//  EbisoryViewController.swift
//  2015-F
//
//  Created by 木下　和巳 on 12/8/15.
//  Copyright © 2015 ie-ModelingAndDesign. All rights reserved.
//

import Foundation
import UIKit

class EbisoryViewController: UIViewController {
    
    //時間計測用の変数.
    var cnt : Int = 0
    var flag = 0
    
    //時間表示用のラベル.
    var myLabel : UILabel!
    
    override func viewDidLoad() {
        
        
        let myImage = UIImage(named: "ebisory.jpg")
        let myImageView = UIImageView()
        myImageView.image = myImage!
        myImageView.frame = CGRectMake(0, 0, self.view.bounds.width,self.view.bounds.height)
        self.view.addSubview(myImageView)

        
        //ラベルを作る.
        myLabel = UILabel(frame: CGRectMake(0,0,200,100))
        myLabel.backgroundColor = UIColor.orangeColor()
        myLabel.layer.masksToBounds = true
        myLabel.backgroundColor = UIColor.whiteColor()
        myLabel.layer.cornerRadius = 10.0
        myLabel.textColor = UIColor.blackColor()
        myLabel.shadowColor = UIColor.grayColor()
        myLabel.textAlignment = NSTextAlignment.Center
        myLabel.layer.position = CGPoint(x: self.view.bounds.width/2,y: 600)
        myLabel.font = UIFont(name: "HiraKakuProN-W3", size: 30)
        self.view.backgroundColor = UIColor.cyanColor()
        self.view.addSubview(myLabel)
        
        let stopButton = UIButton()
        stopButton.frame = CGRectMake(0,0,250,100)
        stopButton.backgroundColor = UIColor.redColor()
        stopButton.layer.masksToBounds = true
        stopButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        stopButton.setTitle("stop", forState: UIControlState.Highlighted)
        stopButton.setTitleColor(UIColor.blackColor(), forState: UIControlState.Highlighted)
        stopButton.layer.cornerRadius = 20.0
        stopButton.layer.position = CGPoint(x: self.view.frame.width/3, y:500)
        stopButton.addTarget(self, action: "onClickstopButton:", forControlEvents: .TouchUpInside)
        self.view.addSubview(stopButton)
        
        let startButton = UIButton()
        startButton.frame = CGRectMake(0,0,250,200)
        startButton.backgroundColor = UIColor.redColor()
        startButton.layer.masksToBounds = true
        startButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        startButton.setTitle("stop", forState: UIControlState.Highlighted)
        startButton.setTitleColor(UIColor.blackColor(), forState: UIControlState.Highlighted)
        startButton.layer.cornerRadius = 20.0
        startButton.layer.position = CGPoint(x: self.view.frame.width, y:500)
        startButton.addTarget(self, action: "onClickstartButton:", forControlEvents: .TouchUpInside)
        self.view.addSubview(startButton)
        
        //タイマーを作る.
        NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: "onUpdate:", userInfo: nil, repeats: true)
        sleep(3)
    }
    
    internal func onClickstopButton(sender: UIButton){
        flag = 1
    }
    
    
    internal func onClickstartButton(sender: UIButton){
        flag = 0
    }
    
    //NSTimerIntervalで指定された秒数毎に呼び出されるメソッド.
    func onUpdate(timer : NSTimer){
        
        if(flag == 0){
            cnt += 1
            if(cnt == 10){
                self.onClickPlayButton()
            }
        }
        
        //桁数を指定して文字列を作る.
        let str = "".stringByAppendingFormat("%.1d",cnt)
        
        myLabel.text = str
        
    }
    
    internal func onClickPlayButton(){
        let story3: UIViewController = AllClearViewController()
        self.presentViewController(story3, animated: true, completion: nil)
    }
    
    
    
}