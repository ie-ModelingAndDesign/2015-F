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
    
    var AudioPlayer = AVAudioPlayer()
    var cnt : Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let soundFilePath = NSURL(fileURLWithPath:NSBundle.mainBundle().pathForResource("perfect", ofType: "wav")!)
        AudioPlayer = try! AVAudioPlayer(contentsOfURL: soundFilePath);
        
        AudioPlayer.prepareToPlay()
        AudioPlayer.play()
        
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
