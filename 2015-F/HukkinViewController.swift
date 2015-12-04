//
//  HukkinViewController.swift
//  2015-F
//
//  Created by 木下　和巳 on 12/4/15.
//  Copyright © 2015 ie-ModelingAndDesign. All rights reserved.
//

import Foundation
import UIKit
import CoreMotion

class HukkinViewController: UIViewController {
    
    var motionManager = CMMotionManager()
    var count:Int = 0
    
    var delegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.
        
        let myLabel: UILabel = UILabel(frame: CGRectMake(0,0,300,200))
        myLabel.backgroundColor = UIColor.orangeColor()
        myLabel.textAlignment = NSTextAlignment.Center
        myLabel.layer.position = CGPoint(x: self.view.bounds.width/2,y: 500)
        self.view.addSubview(myLabel)
        myLabel.text = String(count)
        
        motionManager.gyroUpdateInterval = 1
        
        motionManager.startGyroUpdates()
        
        
        //Start recording data
        motionManager.startGyroUpdatesToQueue(NSOperationQueue.currentQueue()!) {
            (gyroData , error) in
            
            
            
            if (gyroData!.rotationRate.y > 1.0){
                self.count = self.count + 1
                myLabel.text = String(self.count)
                if ( self.count == 5){
                    
                    self.onClickPlayButton()
                }
            }
        }
    }
    
    internal func onClickPlayButton(){
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}