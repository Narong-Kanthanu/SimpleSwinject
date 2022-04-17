//
//  UIViewController+Swinject.swift
//  SimpleSwinject
//
//  Created by Narong Kanthanu on 17/4/2565 BE.
//

import Foundation
import UIKit
import Swinject

extension UIViewController {
    var container: Container {
        get {
            if #available(iOS 13.0, *) {
                let sceneDelegate = UIApplication.shared.connectedScenes
                    .first!.delegate as! SceneDelegate
                return sceneDelegate.container
            } else {
                let appDelegate = UIApplication.shared.delegate as! AppDelegate
                return appDelegate.container
            }
        }
    }
}
