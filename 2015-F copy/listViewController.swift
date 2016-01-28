//
//  listViewController.swift
//  2015-F
//
//  Created by 木下　和巳 on 1/15/16.
//  Copyright © 2016 ie-ModelingAndDesign. All rights reserved.
//

import Foundation

import UIKit

class ListViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let homebutton = UIButton()
        homebutton.frame = CGRectMake(0,0,100,100)
        let homebuttonImage:UIImage = UIImage(named: "home.png")!;
        homebutton.setBackgroundImage(homebuttonImage, forState: UIControlState.Normal);
        homebutton.layer.masksToBounds = true
        homebutton.layer.position = CGPoint(x: 300, y:600)
        homebutton.addTarget(self, action: "onClickMyButton:", forControlEvents: .TouchUpInside)
        self.view.addSubview(homebutton)
    }
    
    internal func onClickMyButton(sender: UIButton){
        let menuViewController: UIViewController = MenuViewController()
        menuViewController.modalTransitionStyle = UIModalTransitionStyle.PartialCurl
        self.presentViewController(menuViewController, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

