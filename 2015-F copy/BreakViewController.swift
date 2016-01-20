//
//  BreakViewController.swift
//  2015-F
//
//  Created by 木下　和巳 on 12/8/15.
//  Copyright © 2015 ie-ModelingAndDesign. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation


class  BreakViewController: UIViewController {
    
    var cnt : Int = 0
    var tune:AVAudioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let tuneURL:NSURL = NSBundle.mainBundle().URLForResource("nice", withExtension: "wav")!
        do { tune = try AVAudioPlayer(contentsOfURL: tuneURL, fileTypeHint: nil) } catch let error as NSError {
            print(error.description)
        }
        tune.numberOfLoops = 1
        tune.prepareToPlay()
        tune.play()
        
        
        let myImage: UIImage = UIImage(named: "clear.jpg")!
        let myImageView: UIImageView = UIImageView()
        myImageView.image = myImage
        myImageView.frame = CGRectMake(0, 0, self.view.bounds.width,self.view.bounds.height)
        self.view.addSubview(myImageView)
        
        let myLabel: UILabel = UILabel(frame: CGRectMake(0,0,300,200))
        myLabel.text = "よし！腹筋クリアだ！　30秒休もう！"
        myLabel.backgroundColor = UIColor.whiteColor()
        myLabel.layer.borderWidth = 2.0;
        
        myLabel.textAlignment = NSTextAlignment.Center
        myLabel.layer.position = CGPoint(x: self.view.bounds.width/2,y: 500)
        self.view.addSubview(myLabel)
        
        NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: "onUpdate:", userInfo: nil, repeats: true)
        
    }
    
    func onUpdate(timer : NSTimer){
        
        cnt += 1
        if(cnt == 10){
            self.onClickPlayButton()
        }
        
        //桁数を指定して文字列を作る.
        
    }
    
    internal func onClickPlayButton(){
        let story3: UIViewController = HowToEbisoryViewController()
        self.presentViewController(story3, animated: true, completion: nil)
    }


    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
