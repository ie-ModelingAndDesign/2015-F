//
//  StartDiet.swift
//  2015-F
//
//  Created by 木下　和巳 on 12/8/15.
//  Copyright © 2015 ie-ModelingAndDesign. All rights reserved.
//

import Foundation
import UIKit


class StartDietViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let myLabel: UILabel = UILabel(frame: CGRectMake(0,0,200,50))
        myLabel.text = "ダイエットする?"
        myLabel.textAlignment = NSTextAlignment.Center
        myLabel.layer.position = CGPoint(x: self.view.bounds.width/2,y: 100)
        self.view.addSubview(myLabel)
        
        
        
        
        
        let yesButton = UIButton()
        yesButton.frame = CGRectMake(0,0,200,40)
        yesButton.backgroundColor = UIColor.redColor()
        yesButton.layer.masksToBounds = true
        yesButton.setTitle("はい", forState: UIControlState.Normal)
        yesButton.layer.position = CGPoint(x: self.view.frame.width/2, y:500)
        yesButton.addTarget(self, action: "onClickMyButton:", forControlEvents: .TouchUpInside)
        self.view.addSubview(yesButton)
        
        let haiButton = UIButton()
        haiButton.frame = CGRectMake(0,0,200,40)
        haiButton.backgroundColor = UIColor.redColor()
        haiButton.layer.masksToBounds = true
        haiButton.setTitle("YES", forState: UIControlState.Normal)
        haiButton.layer.position = CGPoint(x: self.view.frame.width/2, y:600)
        haiButton.addTarget(self, action: "onClickMyButton:", forControlEvents: .TouchUpInside)
        self.view.addSubview(haiButton)
    }
    
    internal func onClickMyButton(sender: UIButton){
        let mySecondViewController: UIViewController = StartViewController()
        mySecondViewController.modalTransitionStyle = UIModalTransitionStyle.PartialCurl
        self.presentViewController(mySecondViewController, animated: true, completion: nil)
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}