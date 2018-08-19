//
//  ViewController.swift
//  TodoList
//
//  Created by Maho Misumi on 2018/08/19.
//  Copyright © 2018年 Maho Misumi. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet var textField: UITextField!
    
    let saveData: UserDefaults = UserDefaults.standard
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
       textField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    
    @IBAction func save(){
        print("保存ボタンが押されました")
        
        if textField.text != nil{
        saveData.set(textField.text, forKey: "toDo")
            print("textFieldにはn\(String(describing: textField.text))と書かれています")
        } else{
            print("textFieldに文字が入っていません")
        }
    
}
}


