//
//  DairyItemTableViewCell.swift
//  Daily
//
//  Created by test on 2018/9/15.
//  Copyright © 2018年 test. All rights reserved.
//

import UIKit

class DairyItemTableViewCell: UITableViewCell {
    

    @IBOutlet weak var cellContainer: UIView!
    
    @IBOutlet weak var avatar: UIImageView!
    
    @IBOutlet weak var contentLabel: UILabel!
    
    @IBOutlet weak var nickNameLabel: UILabel!
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        let num = randomIn(min: 1, max: 4)
    cellContainer.backgroundColor = randomRainbowColor(number: num)
    contentLabel.numberOfLines = 0
    contentLabel.lineBreakMode = NSLineBreakMode.byWordWrapping//按照单词分割换行，保证换行时的单词完整。
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    //MARK: - 生成1-7的数字
    func randomIn(min: Int, max: Int) -> Int {
        return Int(arc4random()) % (max - min + 1) + min
    }
    //MARK: -生成7中随机颜色来改变表格的背景颜色
    func randomRainbowColor(number:Int) -> UIColor {
        var bgColor:UIColor?
        switch number {
        case 1:
            bgColor = UIColor.init(red: 137/255
                , green: 164/255, blue: 175/255, alpha: 1)
        case 2:
            bgColor = UIColor.init(red: 119/255
                , green: 120/255, blue: 122/255, alpha: 1)
        case 3:
            bgColor = UIColor.init(red: 138/255
                , green: 198/255, blue: 160/255, alpha: 1)
        case 4:
            bgColor = UIColor.init(red: 212/255
                , green: 150/255, blue: 109/255, alpha: 1)
        default:
            break
        }
        return bgColor!
    }
    
}
