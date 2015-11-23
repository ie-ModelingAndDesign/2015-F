//
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
        self.view.backgroundColor = UIColor.blueColor()
        
        //playボタンを設置
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
        playButton.addTarget(self, action: "onClickPlayButton:", forControlEvents: .TouchUpInside)
        self.view.addSubview(playButton)
        
        //トレーニンリストボタンを設置
        let listButton = UIButton()
        listButton.frame = CGRectMake(0,0,250,100)
        listButton.backgroundColor = UIColor.redColor()
        listButton.layer.masksToBounds = true
        listButton.setTitle("トレーニングリスト", forState: UIControlState.Normal)
        listButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        listButton.setTitle("トレーニングリスト", forState: UIControlState.Highlighted)
        listButton.setTitleColor(UIColor.blackColor(), forState: UIControlState.Highlighted)
        listButton.setImage(UIImage(named: "switch.png"),forState: UIControlState.Normal)
        listButton.layer.cornerRadius = 20.0
        listButton.layer.position = CGPoint(x: self.view.frame.width/2, y:100)
        listButton.addTarget(self, action: "onClickListButton:", forControlEvents: .TouchUpInside)
        self.view.addSubview(listButton)
       
        
        //カレンダーボタンを設置
        let calButton = UIButton()
        calButton.frame = CGRectMake(0,0,250,100)
        calButton.backgroundColor = UIColor.redColor()
        calButton.layer.masksToBounds = true
        calButton.setTitle("カレンダー", forState: UIControlState.Normal)
        calButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        calButton.setTitle("カレンダー", forState: UIControlState.Highlighted)
        calButton.setTitleColor(UIColor.blackColor(), forState: UIControlState.Highlighted)
        calButton.setImage(UIImage(named: "switch.png"),forState: UIControlState.Normal)
        calButton.layer.cornerRadius = 20.0
        calButton.layer.position = CGPoint(x: self.view.frame.width/2, y:300)
        calButton.addTarget(self, action: "onClickplayMyButton:", forControlEvents: .TouchUpInside)
        self.view.addSubview(calButton)
    }
    
    internal func onClickPlayButton(sender: UIButton){
        if (NSUserDefaults.standardUserDefaults().dictionaryRepresentation()["name"] == nil){
            let userNameSettingView: UIViewController = UserNameSettingView()
            self.presentViewController(userNameSettingView, animated: true, completion: nil)
        }else{
            let setting = AppSetting()
            selectT(setting.list[0],view: self)
        }
    }
    
    internal func onClickListButton(sender: UIButton){
        let list: UIViewController = List()
        self.presentViewController(list, animated: true, completion: nil)
    }
    
    internal func selectT(name: String,view:UIViewController){
        switch name {
        case "Hukkin1":
            let story1: UIViewController = Story1()
            view.presentViewController(story1, animated: true, completion: nil)
        case "Haikin1":
            let haikin1: UIViewController = Haikin1()
            view.presentViewController(haikin1, animated: true, completion: nil)
        case "Twist":
            let twist: UIViewController = TwistViewController()
            view.presentViewController(twist, animated: true, completion: nil)
        case "Squat":
            let squat: UIViewController = SquatViewController()
            view.presentViewController(squat, animated: true, completion: nil)

        default:
            break // do nothing
        }
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }   
    
    
}
