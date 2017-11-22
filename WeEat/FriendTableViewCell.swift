//
//  FriendTableViewCell.swift
//  WeEat
//
//  Created by apple on 2017/11/20.
//  Copyright © 2017年 Wang. All rights reserved.
//

import UIKit

class FriendTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    var width, height: CGFloat!
    var usernameLabel: UILabel!
    var addButton: UIButton!
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        selectionStyle = .none
        
        width = contentView.frame.width
        //Note: There's something spooky about this b0tch
        //height = contentView.frame.height
        
        usernameLabel = UILabel(frame: CGRect(x: 0, y: 0, width: width - 100, height: 50))
        contentView.addSubview(usernameLabel)
        
        addButton = UIButton(frame: CGRect(x: width - 100, y: 0, width: 100, height: 50))
        addButton.setTitle("添加", for: .normal)
        addButton.setTitleColor(.black, for: .normal)
        addButton.setTitleColor(.gray, for: .highlighted)
        addButton.backgroundColor = .red
        contentView.addSubview(addButton)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
