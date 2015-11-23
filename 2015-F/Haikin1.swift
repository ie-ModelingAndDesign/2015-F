//
//  Haikin1.swift
//  2015-F
//
//  Created by 木下　和巳 on 11/20/15.
//  Copyright © 2015 ie-ModelingAndDesign. All rights reserved.
//

import Foundation
import UIKit

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
