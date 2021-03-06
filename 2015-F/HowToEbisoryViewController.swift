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
    
    override func viewDidLoad() {
        
        let myImage = UIImage(named: "ebisory.jpg")
        let myImageView = UIImageView()
        myImageView.image = myImage!
        myImageView.frame = CGRectMake(0, 0, self.view.bounds.width,self.view.bounds.height)
        self.view.addSubview(myImageView)

        
        

        //やり方label
        let howtoLabel: UILabel = UILabel(frame: CGRectMake(0,0,100,50))
        howtoLabel.backgroundColor = UIColor.grayColor()
        howtoLabel.text = "やり方"
        howtoLabel.textColor = UIColor.whiteColor()
        howtoLabel.textAlignment = NSTextAlignment.Center
        howtoLabel.layer.position = CGPoint(x: self.view.bounds.width/3,y: 100)
        self.view.addSubview(howtoLabel)
        
        //next button
        let saveButton: UIButton = UIButton(frame: CGRectMake(0,0,100,100))
        saveButton.backgroundColor = UIColor.redColor();
        saveButton.layer.masksToBounds = true
        saveButton.setTitle("Next", forState: .Normal)
        saveButton.layer.cornerRadius = 20.0
        saveButton.layer.position = CGPoint(x: 350 , y: 650)
        saveButton.addTarget(self, action: "onClickSaveButton:", forControlEvents: .TouchUpInside)
        self.view.addSubview(saveButton)
        
        
    }
    
    internal func onClickSaveButton(sender: UIButton){
        let mySecondViewController: EbisoryViewController = EbisoryViewController()
        mySecondViewController.modalTransitionStyle = UIModalTransitionStyle.PartialCurl
        self.presentViewController(mySecondViewController, animated: true, completion: nil)
    }
}

