//
//  RegisterViewController.swift
//  Daily
//
//  Created by test on 2018/9/14.
//  Copyright © 2018年 test. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var EmailBox: UIView!
    
    @IBOutlet weak var EmailIcon: UIImageView!
    
    @IBOutlet weak var Email: UITextField!
    
    
    @IBOutlet weak var UsernameBox: UIView!
    
    
    
    @IBOutlet weak var UsernameIcon: UIImageView!
    
    @IBOutlet weak var Username: UITextField!
    
    @IBOutlet weak var PasswordIcon: UIImageView!
    @IBOutlet weak var PasswordBox: UIView!
    
    @IBOutlet weak var Password: UITextField!
    
    
    @IBOutlet weak var RegisterBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.shadowImage = UIImage()
        //修改导航栏返回按钮
        let item = UIBarButtonItem(title: "", style: .plain, target: self, action: nil)
        self.navigationItem.backBarButtonItem = item
        //箭头颜色
        self.navigationController?.navigationBar.tintColor = UIColor.white
        //MARK: - 设置注册页面的样式
        let emailImageVIew = EmailIcon.viewWithTag(1001) as! UIImageView
        emailImageVIew.image = UIImage(named: "email")
        let usernameImageView =
            
        UsernameIcon.viewWithTag(1002) as!UIImageView
        usernameImageView.image = UIImage(named: "nicheng")
        
        let passwordImageView =
            PasswordIcon.viewWithTag(1003) as!UIImageView
        passwordImageView.image = UIImage(named: "password")
        EmailBox.layer.borderWidth = 1
        UsernameBox.layer.borderWidth = 1
        PasswordBox.layer.borderWidth = 1
        EmailBox.layer.borderColor = UIColor.white.cgColor
        UsernameBox.layer.borderColor = UIColor.white.cgColor
        PasswordBox.layer.borderColor = UIColor.white.cgColor
        EmailBox.layer.cornerRadius = 25
        UsernameBox.layer.cornerRadius = 25
        PasswordBox.layer.cornerRadius = 25
        RegisterBtn.layer.cornerRadius = 25
        Username.setValue(UIColor.init(red: 51/255, green: 204/255, blue: 204/255, alpha: 1), forKeyPath: "_placeholderLabel.textColor")
        Password.setValue(UIColor.init(red: 51/255, green: 204/255, blue: 204/255, alpha: 1), forKeyPath: "_placeholderLabel.textColor")
        Email.setValue(UIColor.init(red: 51/255, green: 204/255, blue: 204/255, alpha: 1), forKeyPath: "_placeholderLabel.textColor")
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
