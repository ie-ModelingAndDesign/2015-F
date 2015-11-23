//
//  Start.swift
//  2015-F
//
//  Created by 木下　和巳 on 11/20/15.
//  Copyright © 2015 ie-ModelingAndDesign. All rights reserved.
//

import Foundation

import UIKit

class Start: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let next1Button = UIButton()
        next1Button.frame = CGRectMake(0,0,500,500)
        next1Button.backgroundColor = UIColor.redColor()
        next1Button.layer.masksToBounds = true
        next1Button.setTitle("筋トレスタート", forState: UIControlState.Normal)
        next1Button.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        next1Button.setTitle("筋トレスタート", forState: UIControlState.Highlighted)
        next1Button.setTitleColor(UIColor.blackColor(), forState: UIControlState.Highlighted)
        next1Button.setImage(UIImage(named: "switch.png"),forState: UIControlState.Normal)
        next1Button.layer.cornerRadius = 20.0
        next1Button.layer.position = CGPoint(x: self.view.frame.width/2, y:200)
        next1Button.addTarget(self, action: "onClickStartButton:", forControlEvents: .TouchUpInside)
        self.view.addSubview(next1Button)
        
                
    }
    
    internal func onClickStartButton(sender: UIButton){
        let hukkin1: UIViewController = Hukkin1()
        self.presentViewController(hukkin1, animated: true, completion: nil)
    }
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

