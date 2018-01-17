//
//  CMAlert.swift
//  CMAlertController
//
//  Created by Junghoon on 2018. 1. 15..
//  Copyright © 2018년 Junghoon. All rights reserved.
//

import Foundation
import UIKit


public typealias AlertHandler = ((UIAlertAction) -> Void)?

public class CMAlert : UIAlertController {

    /**
     (With OKHandler) It must show at the TOP Controller
     
     - Parameters:
        - title : Title
        - message : Message
        - handler : Run After OK Button Click.
     
     */
    public class func alert(title: String?, message: String?, handler: AlertHandler ) {
        
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let cancel = UIAlertAction(title: "Cancel", style: .destructive, handler: nil)
        let ok = UIAlertAction(title:"OK" , style: .default , handler: handler)
        
        alertController.addAction(cancel)
        alertController.addAction(ok)
        
        ViewTransition.mostTopController().present(alertController, animated: true, completion: nil)
        
    }

    /**
     (With OK and Cancel Handler) It must show at the TOP Controller

     - Parameters:
        - title : Title
        - message : Message
        - OKhandler : Run After OK Button Click
        - Cancelhandler : Run After Cancel Button Click.
     
     */
    public class func alert(title: String?, message: String?, OKhandler: AlertHandler, Cancelhandler: AlertHandler ) {
        
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let cancel = UIAlertAction(title: "Cancel", style: .destructive, handler: Cancelhandler)
        let ok = UIAlertAction(title:"OK" , style: .default , handler: OKhandler)
        
        alertController.addAction(cancel)
        alertController.addAction(ok)
        
        ViewTransition.mostTopController().present(alertController, animated: true, completion: nil)
        
    }
    
    /**
     (Out Handler) Simple Alert. It must show at the TOP Controller
     
     - Parameters:
        - title : Title
        - message : Message
        - buttonTitle : Button Title.
     
     */
    public class func alert(title: String?, message: String?, buttonTitle: String? ) {
        
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title:buttonTitle , style: .default , handler: nil)
        
        alertController.addAction(ok)
        
        ViewTransition.mostTopController().present(alertController, animated: true, completion: nil)
        
    }
    
    
  
}
