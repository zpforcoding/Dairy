//
//  DairyViewController.swift
//  Daily
//
//  Created by test on 2018/9/15.
//  Copyright © 2018年 test. All rights reserved.
//

import UIKit

class DairyViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
//    var dataTemp = ["email","password","username"]
    var dataTemp = [["nicheng":"攀哥写日记","content":"今天天气非常好","dateMark":"1天前","tag":"动力"],["nicheng":"刘德华","content":"我马上开演唱会了","dateMark":"1天前","tag":"好听"]
    ,["nicheng":"张学友","content":"你有我帅吗","dateMark":"2天前","tag":"自信"],["nicheng":"张韶涵","content":"我想有一双隐形的翅膀，每一天带着我去天空翱翔，但是这是不可能的，我希望这个愿望能实现","dateMark":"3天前","tag":"自信"],["nicheng":"王力宏","content":"bady,你就是我的唯一,俩个世界都变形,回去谈何容易。","dateMark":"4天前","tag":"唯一"]]

    @IBOutlet weak var tableview: UITableView!
    override func viewDidLoad() {
        
        super.viewDidLoad()
            //MARK: - 设置底部导航栏的背景颜色
            self.tabBarController?.tabBar.barTintColor = UIColor(red: 51/255, green: 204/255, blue: 204/255, alpha: 1)
            //修改导航栏返回按钮
            let item = UIBarButtonItem(title: "", style: .plain, target: self, action: nil)
            self.navigationItem.backBarButtonItem = item
            //箭头颜色
            self.navigationController?.navigationBar.tintColor = UIColor.white
            // Do any additional setup after loading the view.
            //MARK：- 开始注册xib
            let cellNib = UINib(nibName: "DairyItemTableViewCell", bundle: nil)
            tableview.register(cellNib, forCellReuseIdentifier: "cell")
            self.view.addSubview(self.tableview)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataTemp.count
    }
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell",for:indexPath)

        let nicheng = cell.viewWithTag(1001) as! UILabel
        let content = cell.viewWithTag(1002) as! UILabel
        let dateMark = cell.viewWithTag(1003) as! UILabel
        let tag = cell.viewWithTag(1004) as! UILabel
        
        print("\(dataTemp[indexPath.row])")
        let item = dataTemp[indexPath.row]
        nicheng.text = item["nicheng"]
        content.text = item["content"]
        dateMark.text = item["dateMark"]
        tag.text = item["tag"]
        
        return cell
    }
     func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 240
    }

}
