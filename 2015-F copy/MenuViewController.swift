
//  MenuViewController.swift
//  2015-F
//
//  Created by 木下　和巳 on 11/17/15.
//  Copyright © 2015 ie-ModelingAndDesign. All rights reserved.
//

import Foundation
import UIKit

class MenuViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //playボタンを設置
        let playButton = UIButton()
        playButton.frame = CGRectMake(0,0,250,100)
        playButton.backgroundColor = UIColor.redColor()
        playButton.layer.masksToBounds = true
        playButton.setTitle("トレーニング", forState: UIControlState.Normal)
        playButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        playButton.setTitle("トレーニング", forState: UIControlState.Highlighted)
        playButton.setTitleColor(UIColor.blackColor(), forState: UIControlState.Highlighted)
        playButton.setImage(UIImage(named: "switch.png"),forState: UIControlState.Normal)
        playButton.layer.cornerRadius = 20.0
        playButton.layer.position = CGPoint(x: self.view.frame.width/2, y:500)
        playButton.addTarget(self, action: "onClickplayButton:", forControlEvents: .TouchUpInside)
        self.view.addSubview(playButton)
      
        //トレーニンリストボタンを設置
        let listButton = UIButton()
        listButton.frame = CGRectMake(0,0,100,50)
        listButton.backgroundColor = UIColor.redColor()
        listButton.layer.masksToBounds = true
        listButton.setTitle("リスト", forState: UIControlState.Normal)
        listButton.setTitleColor(UIColor.blackColor(), forState: UIControlState.Highlighted)
        listButton.setImage(UIImage(named: "switch.png"),forState: UIControlState.Normal)
        listButton.layer.cornerRadius = 20.0
        listButton.layer.position = CGPoint(x: 100, y:700)
        listButton.addTarget(self, action: "onClickplayMyButton:", forControlEvents: .TouchUpInside)
        self.view.addSubview(listButton)
       
        //カレンダーボタンを設置
        let calButton = UIButton()
        calButton.frame = CGRectMake(0,0,100,50)
        calButton.backgroundColor = UIColor.redColor()
        calButton.layer.masksToBounds = true
        calButton.setTitle("カレンダー", forState: UIControlState.Normal)
        calButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        calButton.setTitle("カレンダー", forState: UIControlState.Highlighted)
        calButton.setTitleColor(UIColor.blackColor(), forState: UIControlState.Highlighted)
        calButton.setImage(UIImage(named: "switch.png"),forState: UIControlState.Normal)
        calButton.layer.cornerRadius = 20.0
        calButton.layer.position = CGPoint(x:300, y:700)
        calButton.addTarget(self, action: "onClickplayMyButton:", forControlEvents: .TouchUpInside)
        self.view.addSubview(calButton)
    }
    
    internal func onClickplayButton(sender: UIButton){
        let mySecondViewController: UIViewController = StartDietViewController()
        mySecondViewController.modalTransitionStyle = UIModalTransitionStyle.PartialCurl
        self.presentViewController(mySecondViewController, animated: true, completion: nil)
    }
    
        override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
