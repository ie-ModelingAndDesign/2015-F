//
//  GoHukkinViewController.swift
//  2015-F
//
//  Created by 木下　和巳 on 12/8/15.
//  Copyright © 2015 ie-ModelingAndDesign. All rights reserved.
//

import Foundation
import UIKit

class GoHukkinViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let myImage: UIImage = UIImage(named: "start.jpg")!
        let myImageView: UIImageView = UIImageView()
        myImageView.image = myImage
        myImageView.frame = CGRectMake(0, 0, self.view.bounds.width,self.view.bounds.height)
        self.view.addSubview(myImageView)
        
        
        //play backbround music
        MusicHelper.sharedHelper.playBackgroundMusic()
        
        let myLabel: UILabel = UILabel(frame: CGRectMake(0,0,300,200))
        myLabel.text = "さぁ。腹筋始めるぞ！　Let's 腹筋 30回"
        myLabel.backgroundColor = UIColor.whiteColor()
        myLabel.layer.borderWidth = 2.0;
        
        myLabel.textAlignment = NSTextAlignment.Center
        myLabel.layer.position = CGPoint(x: self.view.bounds.width/2,y: 500)
        self.view.addSubview(myLabel)
        
        
        let button = UIButton()
        button.frame = CGRectMake(0,0,100,50)
        let buttonImage:UIImage = UIImage(named: "next.png")!;
        button.setBackgroundImage(buttonImage, forState: UIControlState.Normal);
        button.layer.masksToBounds = true
        button.layer.position = CGPoint(x: 350, y:660)
        button.addTarget(self, action: "onClickMyButton:", forControlEvents: .TouchUpInside)
        self.view.addSubview(button)

        
    }

    internal func onClickMyButton(sender: UIButton){
        let mySecondViewController: UIViewController = HowToHukkinViewController()
        mySecondViewController.modalTransitionStyle = UIModalTransitionStyle.PartialCurl
        self.presentViewController(mySecondViewController, animated: true, completion: nil)
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}




