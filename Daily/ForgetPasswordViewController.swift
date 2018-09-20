//
//  ForgetPasswordViewController.swift
//  Daily
//
//  Created by test on 2018/9/15.
//  Copyright © 2018年 test. All rights reserved.
//

import UIKit

class ForgetPasswordViewController: UIViewController {
    

    @IBOutlet weak var ForgetPwdNextStep: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        ForgetPwdNextStep.layer.cornerRadius = 25
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 51/255, green: 204/255, blue: 204/255, alpha: 1)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        // Do any additional setup after loading the view.
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
