//
//  StartViewControll.swift
//  2015-F
//
//  Created by 木下　和巳 on 12/8/15.
//  Copyright © 2015 ie-ModelingAndDesign. All rights reserved.
//

import Foundation
import UIKit




class StartViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //play backbround music
        MusicHelper.sharedHelper.playBackgroundMusic()
        
        let button = UIButton()
        button.frame = CGRectMake(0,0,200,40)
        button.backgroundColor = UIColor.redColor()
        button.layer.masksToBounds = true
        button.setTitle("筋トレスタート", forState: UIControlState.Normal)
        button.layer.position = CGPoint(x: self.view.frame.width/2, y:400)
        button.addTarget(self, action: "onClickMyButton:", forControlEvents: .TouchUpInside)
        self.view.addSubview(button)
    }
    
    internal func onClickMyButton(sender: UIButton){
        let mySecondViewController: GoHukkinViewController = GoHukkinViewController()
        mySecondViewController.modalTransitionStyle = UIModalTransitionStyle.PartialCurl
        self.presentViewController(mySecondViewController, animated: true, completion: nil)
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


