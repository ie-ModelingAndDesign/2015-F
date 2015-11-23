//
//  SelectTraining.swift
//  2015-F
//
//  Created by 木下　和巳 on 11/20/15.
//  Copyright © 2015 ie-ModelingAndDesign. All rights reserved.
//

import Foundation
import UIKit

internal func selectT(name: String,view:UIViewController){
    switch name {
    case "Hukkin1":
        let story1: UIViewController = Story1()
        view.presentViewController(story1, animated: true, completion: nil)
    case "Haikin1":
        let haikin1: UIViewController = Haikin1()
        view.presentViewController(haikin1, animated: true, completion: nil)
    case "Twist":
        let twist: UIViewController = TwistViewController()
        view.presentViewController(twist, animated: true, completion: nil)
    case "Squat":
        let squat: UIViewController = SquatViewController()
        view.presentViewController(squat, animated: true, completion: nil)
        
    default:
        break // do nothing
    }
}
