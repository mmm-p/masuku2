//
//  ViewController.swift
//  masuku2
//
//  Created by 柳川万結 on 2020/04/03.
//  Copyright © 2020 柳川万結. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
   
    var number: Int = 0
   
    @IBOutlet var titleTextField: UITextField!
    var saveData: UserDefaults = UserDefaults.standard
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        titleTextField.text = saveData.object(forKey: "title") as? String
    
    }
    @IBAction func plus(){
        number = number + 1
        titleTextField.text = String(number)
        if number <= 7{
            titleTextField.textColor = UIColor.red
        }else{
            titleTextField.textColor = UIColor.black
            
        }
    }
    @IBAction func minus(){
        number = number - 1
        titleTextField.text = String(number)
        if number <= 7{
                   titleTextField.textColor = UIColor.red
               }else{
                   titleTextField.textColor = UIColor.black
                   
        }
    }
    @IBAction func savemaisuu(){
        saveData.set(titleTextField.text, forKey: "title")
        
        let alert: UIAlertController = UIAlertController(title: "保存", message: "本文を入れます", preferredStyle: .alert)
        alert.addAction(
            UIAlertAction(
                title: "OK",
                style: .default,
                handler: { action in
                    self.navigationController?.popViewController(animated: true)
    
    
    }
        )
        )

        present(alert, animated: true,completion: nil)
               
}

}
