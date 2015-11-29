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
    let ud = NSUserDefaults.standardUserDefaults()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib


        // なまえを表示
        let nameLabel: UILabel = UILabel(frame: CGRectMake(0,0,200,50))
        nameLabel.text = "なまえ"
        nameLabel.layer.position = CGPoint(x: 200,y: 100)
        self.view.addSubview(nameLabel)


        //テキスト入力するとこ
        nameTextField.borderStyle = UITextBorderStyle.RoundedRect
        nameTextField.delegate = self
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
        jentluSwicth.layer.position = CGPoint(x: (self.view.frame.width/4)*3, y: 300)
        jentluSwicth.tintColor = UIColor.blackColor()
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
        womanSwicth.layer.position = CGPoint(x: (self.view.frame.width/4)*3, y: 400)
        womanSwicth.tintColor = UIColor.blackColor()
        womanSwicth.tag = 2
        womanSwicth.on = true
        self.view.addSubview(womanSwicth)


        //保存ボタン
        let saveButton: UIButton = UIButton(frame: CGRectMake(0,0,100,100))
        saveButton.backgroundColor = UIColor.redColor();
        saveButton.layer.masksToBounds = true
        saveButton.setTitle("Next", forState: .Normal)
        saveButton.layer.cornerRadius = 20.0
        saveButton.layer.position = CGPoint(x: (self.view.bounds.width/4)*3 , y: 600)
        saveButton.addTarget(self, action: "onClickSaveButton:", forControlEvents: .TouchUpInside)
        self.view.addSubview(saveButton)

    }


    internal func onClickSaveButton(sender: UIButton){
        var isAlert :Bool = true
        ud.setObject(nameTextField.text!, forKey: "name")
        ud.synchronize()

        if ((ud.dictionaryRepresentation()["name"] == nil) || (ud.stringForKey("name") == "")){
            let alertController = UIAlertController(title: "Hello!", message: "名前を入力してください。", preferredStyle: .Alert)

            let defaultAction = UIAlertAction(title: "OK", style: .Default, handler: nil)
            alertController.addAction(defaultAction)

            presentViewController(alertController, animated: true, completion: nil)
            isAlert = false
        }

        if (womanSwicth.on == false && jentluSwicth.on == false){
            let alertController = UIAlertController(title: "Hello!", message: "男女指定してください。", preferredStyle: .Alert)

            let defaultAction = UIAlertAction(title: "OK", style: .Default, handler: nil)
            alertController.addAction(defaultAction)

            presentViewController(alertController, animated: true, completion: nil)
            isAlert = false
        }

        if (womanSwicth.on == true && jentluSwicth.on == true){
            let alertController = UIAlertController(title: "Hello!", message: "男ですか？女ですか？", preferredStyle: .Alert)

            let defaultAction = UIAlertAction(title: "OK", style: .Default, handler: nil)
            alertController.addAction(defaultAction)

            presentViewController(alertController, animated: true, completion: nil)
            isAlert = false
        }

        if (isAlert){
            goToMenu()
        }

    }


    internal func goToMenu(){
        if(jentluSwicth.on == true){
            ud.setObject(true,forKey: "sex")
        }else{
            ud.setObject(false, forKey: "sex")
        }
        let menuViewController: UIViewController = MenuViewController()
        self.presentViewController(menuViewController, animated: true, completion: nil)
    }


    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

