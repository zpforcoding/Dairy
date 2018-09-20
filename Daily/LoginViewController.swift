//
//  LoginViewController.swift
//  Daily
//
//  Created by test on 2018/9/14.
//  Copyright © 2018年 test. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    
    @IBOutlet weak var UsernameBox: UIView!
    
    @IBOutlet weak var UsernameIcon: UIImageView!
    
    @IBOutlet weak var Username: UITextField!
    
    @IBOutlet weak var Password: UITextField!
    @IBOutlet weak var PasswordIcon: UIImageView!
    @IBOutlet weak var PasswordBox: UIView!
    
    @IBOutlet weak var LoginBtn: UIButton!
    
    override func viewDidLoad() {
            super.viewDidLoad()
        //MARK: 去掉导航栏分界线
        self.navigationController?.navigationBar.shadowImage = UIImage()
        //MARK: - 取消返回按钮文字
        let item = UIBarButtonItem(title: "", style: .plain, target: self, action: nil)
        self.navigationItem.backBarButtonItem = item
        //MARK: - 设置登录页面的样式
       let usernameImageView =
        UsernameIcon.viewWithTag(1001) as!UIImageView
        usernameImageView.image = UIImage(named: "email")
        
        let passwordImageView =
        PasswordIcon.viewWithTag(1002) as!UIImageView
       passwordImageView.image = UIImage(named: "password")
        
        UsernameBox.layer.borderWidth = 1
        PasswordBox.layer.borderWidth = 1
        UsernameBox.layer.borderColor = UIColor.white.cgColor
        PasswordBox.layer.borderColor = UIColor.white.cgColor
        UsernameBox.layer.cornerRadius = 25
        PasswordBox.layer.cornerRadius = 25
        LoginBtn.layer.cornerRadius = 25
        Username.setValue(UIColor.init(red: 51/255, green: 204/255, blue: 204/255, alpha: 1), forKeyPath: "_placeholderLabel.textColor")
        Password.setValue(UIColor.init(red: 51/255, green: 204/255, blue: 204/255, alpha: 1), forKeyPath: "_placeholderLabel.textColor")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
