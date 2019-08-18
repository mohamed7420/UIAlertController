//
//  ViewController.swift
//  UIAlertController
//
//  Created by Mohamed on 8/18/19.
//  Copyright © 2019 Mohamed74. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func AlertAction(_ sender: UIButton) {
        
        let alert = UIAlertController(title: "my title", message: "my message", preferredStyle: .alert)
        
        alert.addTextField { (textField) in
            
            textField.placeholder = "MY PLACEHOLDER HERE"
            textField.keyboardType = .numberPad
        }
        
        let alertAction = UIAlertAction(title: "OK", style: .default) { (myAction) in
            
            let text = alert.textFields?.first?.text
            
            print(text)
        }
        let alertAction2 = UIAlertAction(title: "Cancel", style: .cancel) { (myAction) in
            
            print("Cancel")
        }
        
        
        alert.addAction(alertAction)
        alert.addAction(alertAction2)
        self.present(alert , animated: true , completion: nil)
        
        
    }



    @IBAction func ActionSheet(_ sender: UIButton) {
    
        let sheet = UIAlertController(title: nil , message: nil, preferredStyle: .actionSheet)
        
        let actionSheet = UIAlertAction(title: "Browse", style: .default) { (mysheet) in
            
            print("sheet")
        }
        let actionSheet1 = UIAlertAction(title: "Browse", style: .default) { (mysheet) in
            
            print("sheet1")
        }
       
        let actionSheet3 = UIAlertAction(title: "Cancel", style: .cancel) { (mysheet) in
            
            print("cancel")
        }
        
        sheet.addAction(actionSheet)
        sheet.addAction(actionSheet1)
        sheet.addAction(actionSheet3)
        
        self.present(sheet , animated: true , completion: nil)
    
    }
    
}

