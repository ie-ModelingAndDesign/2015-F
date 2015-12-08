//
//  EbisoryViewController.swift
//  2015-F
//
//  Created by 木下　和巳 on 12/8/15.
//  Copyright © 2015 ie-ModelingAndDesign. All rights reserved.
//

import Foundation
import UIKit

class EbisoryViewController: UIViewController {
    
    //時間計測用の変数.
    var cnt : Int = 0
    
    //時間表示用のラベル.
    var myLabel : UILabel!
    
    override func viewDidLoad() {
        
        
        let myImage = UIImage(named: "ebisory.jpg")
        let myImageView = UIImageView()
        myImageView.image = myImage!
        myImageView.frame = CGRectMake(0, 0, self.view.bounds.width,self.view.bounds.height)
        self.view.addSubview(myImageView)

        
        //ラベルを作る.
        myLabel = UILabel(frame: CGRectMake(0,0,200,50))
        myLabel.backgroundColor = UIColor.orangeColor()
        myLabel.layer.masksToBounds = true
        myLabel.layer.cornerRadius = 20.0
        myLabel.text = "Time:\(cnt)"
        myLabel.textColor = UIColor.whiteColor()
        myLabel.shadowColor = UIColor.grayColor()
        myLabel.textAlignment = NSTextAlignment.Center
        myLabel.layer.position = CGPoint(x: self.view.bounds.width/2,y: 200)
        self.view.backgroundColor = UIColor.cyanColor()
        self.view.addSubview(myLabel)
        
        //タイマーを作る.
        NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: "onUpdate:", userInfo: nil, repeats: true)
    }
    
    //NSTimerIntervalで指定された秒数毎に呼び出されるメソッド.
    func onUpdate(timer : NSTimer){
        
        cnt += 1
        if(cnt == 10){
            self.onClickPlayButton()
        }
        
        //桁数を指定して文字列を作る.
        let str = "Time:".stringByAppendingFormat("%.1d",cnt)
        
        myLabel.text = str
        
    }
    
    internal func onClickPlayButton(){
        let story3: UIViewController = AllClearViewController()
        self.presentViewController(story3, animated: true, completion: nil)
    }
    
    
    
}