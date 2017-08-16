//
//  ViewController.swift
//  AlertSample
//
//  Created by ktds 29  on 2017. 8. 16..
//  Copyright © 2017년 ktds 29 . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func openActionSheet(_ sender: Any) {
        let alert = UIAlertController(title: "알림", message : "메시지 내용", preferredStyle: .actionSheet)
        
        let cancelBtn = UIAlertAction(title:"취소", style : .cancel, handler : { (UIAlertAction) -> Void in
            print("취소됨")
        })
        
        let facebookBtn = UIAlertAction(title: "Facebook:", style: .default, handler:{ (UIAlertAction) -> Void in
            print("Facebook 선택함")
        })
        
        let twitterBtn = UIAlertAction(title: "twitterBtn:", style: .default, handler:{ (UIAlertAction) -> Void in
            print("twitter 선택함")
        })
        alert.addAction(facebookBtn)
        alert.addAction(twitterBtn)
        alert.addAction(cancelBtn)
        
        self.present(alert, animated: true, completion: {
                () -> Void in
                print("화면 나타남")
        })
        

    }
    
    @IBAction func openAlert(_ sender: Any) {
        let loginAlert = UIAlertController(title: "로그인", message: "아이디와 패스워드를 입력하세요", preferredStyle: .alert)
        
        loginAlert.addTextField(configurationHandler: {
            textField in
            textField.placeholder = "아이디"
        })
        
        loginAlert.addTextField(configurationHandler: {
            textField in
            textField.placeholder = "패스워드"
            textField.isSecureTextEntry = true
        })
        
        let cancelBtn = UIAlertAction(title: "취소", style: .cancel, handler: nil)
        
        let confirmBtn = UIAlertAction(title: "확인", style: .default , handler : {
            alertAction in
            
            let id = loginAlert.textFields?[0].text
            let pw = loginAlert.textFields?[1].text
            
            if id == "test" && pw == "1234" {
                print("성공")
            
            }else{
                print("실패")
            }
        })
     
        loginAlert.addAction(cancelBtn)
        loginAlert.addAction(confirmBtn)
        
        self.present(loginAlert, animated: true, completion: {
            () -> Void in
            print("alert 나타남요")
        })
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

