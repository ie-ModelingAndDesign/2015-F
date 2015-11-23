//
//  List.swift
//  2015-F
//
//  Created by 木下　和巳 on 11/20/15.
//  Copyright © 2015 ie-ModelingAndDesign. All rights reserved.
//

import Foundation

import UIKit

class List: UIViewController {
    let piyo = AppSetting()
    let hukkinSwicth: UISwitch = UISwitch()
    let haikinSwicth: UISwitch = UISwitch()
    let squatSwicth: UISwitch = UISwitch()
    let twistSwicth: UISwitch = UISwitch()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let hukkinLabel: UILabel = UILabel(frame: CGRectMake(0,0,300,200))
        hukkinLabel.text = "腹筋"
        hukkinLabel.textAlignment = NSTextAlignment.Center
        hukkinLabel.layer.position = CGPoint(x: self.view.bounds.width/3,y: 400)
        self.view.addSubview(hukkinLabel)
        
        
        hukkinSwicth.layer.position = CGPoint(x: self.view.frame.width/2, y: 400)
        hukkinSwicth.tintColor = UIColor.blackColor()
        self.view.addSubview(hukkinSwicth)
        
        let haikinLabel: UILabel = UILabel(frame: CGRectMake(0,0,300,200))
        haikinLabel.text = "背筋"
        haikinLabel.textAlignment = NSTextAlignment.Center
        haikinLabel.layer.position = CGPoint(x: self.view.bounds.width/3,y: 300)
        self.view.addSubview(haikinLabel)

        
        haikinSwicth.layer.position = CGPoint(x: self.view.frame.width/2, y:  300)
        haikinSwicth.tintColor = UIColor.blackColor()
        self.view.addSubview(haikinSwicth)
        
        let squatLabel: UILabel = UILabel(frame: CGRectMake(0,0,300,200))
        squatLabel.text = "スクワット"
        squatLabel.textAlignment = NSTextAlignment.Center
        squatLabel.layer.position = CGPoint(x: self.view.bounds.width/3,y: 200)
        self.view.addSubview(squatLabel)

        
        squatSwicth.layer.position = CGPoint(x: self.view.frame.width/2, y: 200)
        squatSwicth.tintColor = UIColor.blackColor()
        self.view.addSubview(squatSwicth)
        
        let twistLabel: UILabel = UILabel(frame: CGRectMake(0,0,300,200))
        twistLabel.text = "ツイスト"
        twistLabel.textAlignment = NSTextAlignment.Center
        twistLabel.layer.position = CGPoint(x: self.view.bounds.width/3,y: 100)
        self.view.addSubview(twistLabel)

        
        twistSwicth.layer.position = CGPoint(x: self.view.frame.width/2, y: 100)
        twistSwicth.tintColor = UIColor.blackColor()
        self.view.addSubview(twistSwicth)
        
        //nextボタン
        let nextButton = UIButton()
        nextButton.frame = CGRectMake(0,0,50,50)
        nextButton.backgroundColor = UIColor.redColor()
        nextButton.layer.masksToBounds = true
        nextButton.setTitle("next", forState: UIControlState.Normal)
        nextButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        nextButton.setTitle("next", forState: UIControlState.Highlighted)
        nextButton.setTitleColor(UIColor.blackColor(), forState: UIControlState.Highlighted)
        nextButton.setImage(UIImage(named: "switch.png"),forState: UIControlState.Normal)
        nextButton.layer.cornerRadius = 20.0
        nextButton.layer.position = CGPoint(x: self.view.frame.width/2, y:700)
        nextButton.addTarget(self, action: "onClickPlayButton:", forControlEvents: .TouchUpInside)
        self.view.addSubview(nextButton)

    }
    
    internal func onClickPlayButton(sender: UISwitch){
        print("2")
        var trainingList: [String] = []
        
        if (haikinSwicth.on == true){
            trainingList.insert("Haikin1", atIndex: 0)
        }
        
        
        if (hukkinSwicth.on == true){
            trainingList.insert("Hukkin1", atIndex: 0)
        }
        
        if (twistSwicth.on == true){
            trainingList.insert("Twist", atIndex: 0)
        }
        
        if (squatSwicth.on == true){
            trainingList.insert("Squat", atIndex: 0)
        }

        
        trainingList.append("HappyEnd")
        trainingList.insert("Haikin1", atIndex: 0)
        
        let piyo = AppSetting()
        piyo.list =  trainingList
        
        
        
        let menu: UIViewController = MenuViewController()
        self.presentViewController(menu, animated: true, completion: nil)
    }
    
    internal func selectT(name: String){
        switch name {
        case "Hukkin1":
            let start: UIViewController = Start()
            self.presentViewController(start, animated: true, completion: nil)
        case "Haikin1":
            let haikin1: UIViewController = Haikin1()
            self.presentViewController(haikin1, animated: true, completion: nil)
        case "Twist":
            let twist: UIViewController = TwistViewController()
            self.presentViewController(twist, animated: true, completion: nil)
        case "Squat":
            let squat: UIViewController = SquatViewController()
            self.presentViewController(squat, animated: true, completion: nil)
            
        default:
            break // do nothing
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}