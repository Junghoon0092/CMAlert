//
//  ViewTransition.swift
//  CMAlertController
//
//  Created by Junghoon on 2018. 1. 15..
//  Copyright © 2018년 Junghoon. All rights reserved.
//

import Foundation
import UIKit

class ViewTransition : UIViewController {
    
    /**
     (UIViewContorller) It detect Most Top Controller.
     - Note: It detect Most Top Controller.
     - Example:
       ```
       UINaviController(Root) -> UIViewController(1) -push> UIViewController(2)
       TopContorller is UINaviController
     
       UINaviController(Root) -> UIViewController(1) -Modal> UIViewController(2)
       TopContorller is UIViewController(2)
     
       UINaviController(Root)(1) -> UIViewController(1) -Modal> UINaviController(Root)(2) -> UIViewController(3)
       TopContorller is UINaviController(Root)(2)
     
       ```
     - Returns:
       Most Top Controller.(UIViewController)
     
     */
    class func mostTopController() -> UIViewController {
        
        var topController = UIApplication.shared.keyWindow?.rootViewController
        while let presentedViewController = topController?.presentedViewController {
            topController = presentedViewController
        }
        
        return topController!
        
    }

    
    
}

