//
//  UserSettingViewController.swift
//  2015-F
//
//  Created by 木下　和巳 on 11/26/15.
//  Copyright © 2015 ie-ModelingAndDesign. All rights reserved.
//

import Foundation
import UIKit

class UserSettingViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib
        
        
        // なまえを表示
        let nameLabel: UILabel = UILabel(frame: CGRectMake(0,0,200,50))
        nameLabel.text = "なまえ"
        nameLabel.layer.position = CGPoint(x: 200,y: 100)
        self.view.addSubview(nameLabel)
        
        
        //テキスト入力するとこ
        let nameTextField = UITextField(frame: CGRectMake(0,0,200,30))
        nameTextField.borderStyle = UITextBorderStyle.RoundedRect
        nameTextField.layer.position = CGPoint(x:self.view.bounds.width/2,y:200);
        self.view.addSubview(nameTextField)
        
        
        //男ボタン
        let jentluLabel: UILabel = UILabel(frame: CGRectMake(0,0,200,200))
        jentluLabel.layer.masksToBounds = true
        jentluLabel.layer.cornerRadius = 20.0
        jentluLabel.text = "男"
        jentluLabel.textColor = UIColor.blueColor()
        jentluLabel.textAlignment = NSTextAlignment.Center
        jentluLabel.layer.position = CGPoint(x: self.view.bounds.width/2,y: 250)
        self.view.addSubview(jentluLabel)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

