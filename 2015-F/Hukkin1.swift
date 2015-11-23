//
//  hukkin1.swift
//  2015-F
//
//  Created by 木下　和巳 on 11/20/15.
//  Copyright © 2015 ie-ModelingAndDesign. All rights reserved.
//

import Foundation
import UIKit

class Hukkin1: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Nextボタン
        let next1Button = UIButton()
        next1Button.frame = CGRectMake(0,0,100,100)
        next1Button.backgroundColor = UIColor.redColor()
        next1Button.layer.masksToBounds = true
        next1Button.setTitle("Next", forState: UIControlState.Normal)
        next1Button.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        next1Button.setTitle("Next", forState: UIControlState.Highlighted)
        next1Button.setTitleColor(UIColor.blackColor(), forState: UIControlState.Highlighted)
        next1Button.setImage(UIImage(named: "switch.png"),forState: UIControlState.Normal)
        next1Button.layer.cornerRadius = 20.0
        next1Button.layer.position = CGPoint(x: self.view.frame.width/2, y:600)
        next1Button.addTarget(self, action: "onClickStartButton:", forControlEvents: .TouchUpInside)
        self.view.addSubview(next1Button)
        
        // Do any additional setup after loading the view, typically from a nib.
        
        let myLabel: UILabel = UILabel(frame: CGRectMake(0,0,300,200))
        let setting = AppSetting()
        myLabel.text = setting.name + "準備OK?"
        myLabel.backgroundColor = UIColor.orangeColor()
        myLabel.textAlignment = NSTextAlignment.Center
        myLabel.layer.position = CGPoint(x: self.view.bounds.width/2,y: 500)
        self.view.addSubview(myLabel)
        
    }
    
    internal func onClickStartButton(sender: UIButton){
        let hukkinGyro: UIViewController = HukkinGyro()
        self.presentViewController(hukkinGyro, animated: true, completion: nil)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

