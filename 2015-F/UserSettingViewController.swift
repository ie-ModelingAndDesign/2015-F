//
//  UserSettingViewController.swift
//  2015-F
//
//  Created by 木下　和巳 on 11/26/15.
//  Copyright © 2015 ie-ModelingAndDesign. All rights reserved.
//

import Foundation
import UIKit

class UserSettingViewController: UIViewController ,UITextFieldDelegate{
    let jentluSwicth: UISwitch = UISwitch(frame: CGRectMake(0,0,200,200))
    let womanSwicth: UISwitch = UISwitch(frame: CGRectMake(0,0,200,200))
    let nameTextField = UITextField(frame: CGRectMake(0,0,200,50))

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib
        
        
        // なまえを表示
        let nameLabel: UILabel = UILabel(frame: CGRectMake(0,0,200,50))
        nameLabel.text = "なまえ"
        nameLabel.layer.position = CGPoint(x: 200,y: 100)
        self.view.addSubview(nameLabel)
        
        
        //テキスト入力するとこ
        let nameTextField = UITextField(frame: CGRectMake(0,0,200,50))
        nameTextField.borderStyle = UITextBorderStyle.RoundedRect
        nameTextField.layer.position = CGPoint(x:self.view.bounds.width/2,y:200);
        nameTextField.delegate = self
        self.view.addSubview(nameTextField)
        
        
        //男ラベル
        let jentluLabel: UILabel = UILabel(frame: CGRectMake(0,0,600,600))
        jentluLabel.layer.masksToBounds = true
        jentluLabel.layer.cornerRadius = 20.0
        jentluLabel.text = "男"
        jentluLabel.textColor = UIColor.blueColor()
        jentluLabel.textAlignment = NSTextAlignment.Center
        jentluLabel.layer.position = CGPoint(x: (self.view.bounds.width/4),y: 300)
        self.view.addSubview(jentluLabel)

        
        //男のスイッチ
        let jentluSwicth: UISwitch = UISwitch(frame: CGRectMake(0,0,200,200))
        jentluSwicth.layer.position = CGPoint(x: (self.view.frame.width/4)*3, y: 300)
        jentluSwicth.tintColor = UIColor.blackColor()
        jentluSwicth.addTarget(self, action: "onClickSwicth:", forControlEvents: UIControlEvents.ValueChanged)
        jentluSwicth.tag = 1
        self.view.addSubview(jentluSwicth)
        
        //女ラベル
        let womanLabel: UILabel = UILabel(frame: CGRectMake(0,0,600,600))
        womanLabel.layer.masksToBounds = true
        womanLabel.layer.cornerRadius = 20.0
        womanLabel.text = "女"
        womanLabel.textColor = UIColor.blueColor()
        womanLabel.textAlignment = NSTextAlignment.Center
        womanLabel.layer.position = CGPoint(x: (self.view.bounds.width/4),y: 400)
        self.view.addSubview(womanLabel)

        
        //女のスイッチ
        let womanSwicth: UISwitch = UISwitch(frame: CGRectMake(0,0,200,200))
        womanSwicth.layer.position = CGPoint(x: (self.view.frame.width/4)*3, y: 400)
        womanSwicth.tintColor = UIColor.blackColor()
        womanSwicth.addTarget(self, action: "onClickSwicth:", forControlEvents: UIControlEvents.ValueChanged)
        womanSwicth.tag = 2
        womanSwicth.on = true
        self.view.addSubview(womanSwicth)
        
        
        //保存ボタン
        let saveButton = UIButton()
        saveButton.frame = CGRectMake(0,0,100,100)
        saveButton.backgroundColor = UIColor.redColor()
        saveButton.layer.masksToBounds = true
        saveButton.setTitle("保存", forState: UIControlState.Normal)
        saveButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        saveButton.setTitle("保存", forState: UIControlState.Highlighted)
        saveButton.setTitleColor(UIColor.blackColor(), forState: UIControlState.Highlighted)
        saveButton.setImage(UIImage(named: "switch.png"),forState: UIControlState.Normal)
        saveButton.layer.cornerRadius = 20.0
        saveButton.layer.position = CGPoint(x: (self.view.frame.width/4)*3, y:600)
        womanSwicth.addTarget(self, action: "onClickSaveButton:", forControlEvents: UIControlEvents.ValueChanged)
        self.view.addSubview(saveButton)

    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    internal func onClickSaveButton(sender: UISwitch){
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

