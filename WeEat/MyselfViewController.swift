//
//  MyselfViewController.swift
//  WeEat
//
//  Created by apple on 2017/11/19.
//  Copyright © 2017年 Wang. All rights reserved.
//

import UIKit

class MyselfViewController: UIViewController {
    
    var width, height: CGFloat!
    var addButton, settingsButton: UIButton!
    var topBar, usernameLabel, topicLabel, friendLabel, topicNumLabel, friendNumLabel, newFriendLabel: UILabel!
    var avatarView, socialView, newFriendView: UIView!
    var iconImageView, friendImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        width = view.frame.width
        height = view.frame.height
        
        view.backgroundColor = UIColor(white: 237 / 255, alpha: 1)
        let subTextColor = UIColor(white: 195 / 255, alpha: 1)
        let mainTextFont = UIFont.systemFont(ofSize: 20)
        let subTextFont = UIFont.systemFont(ofSize: 15)
        
        topBar = UILabel(frame: CGRect(x: 0, y: 0, width: width, height: height * 0.08))
        topBar.backgroundColor = .white
        topBar.text = "我"
        topBar.font = mainTextFont
        topBar.textAlignment = .center
        view.addSubview(topBar)
        
        addButton = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: height * 0.08))
        addButton.setTitle("添加好友", for: .normal)
        addButton.titleLabel?.font = mainTextFont
        addButton.setTitleColor(.black, for: .normal)
        addButton.setTitleColor(.gray, for: .highlighted)
        addButton.addTarget(self, action: #selector(addFriend), for: .touchUpInside)
        view.addSubview(addButton)
        
        settingsButton = UIButton(frame: CGRect(x: width - 50, y: 0, width: 50, height: height * 0.08))
        settingsButton.setTitle("设置", for: .normal)
        settingsButton.titleLabel?.font = mainTextFont
        settingsButton.setTitleColor(.black, for: .normal)
        settingsButton.setTitleColor(.gray, for: .highlighted)
        view.addSubview(settingsButton)
        
        avatarView = UIView(frame: CGRect(x: 0, y: height * 0.1, width: width, height: height * 0.12 - 2))
        avatarView.backgroundColor = .white
        view.addSubview(avatarView)
        
        iconImageView = UIImageView(frame: CGRect(x: height * 0.01, y: height * 0.01 - 1, width: height * 0.1, height: height * 0.1))
        iconImageView.backgroundColor = .black
        avatarView.addSubview(iconImageView)
        
        usernameLabel = UILabel(frame: CGRect(x: height * 0.12, y: height * 0.01, width: width * 0.5, height: 25))
        usernameLabel.text = "test"
        usernameLabel.font = .systemFont(ofSize: 25)
        avatarView.addSubview(usernameLabel)
        
        socialView = UIView(frame: CGRect(x: 0, y: height * 0.22, width: width, height: height * 0.08))
        socialView.backgroundColor = .white
        view.addSubview(socialView)
        
        topicLabel = UILabel(frame: CGRect(x: 5, y: 0, width: 90, height: height * 0.05))
        topicLabel.text = "话题"
        topicLabel.font = mainTextFont
        socialView.addSubview(topicLabel)
        
        topicNumLabel = UILabel(frame: CGRect(x: 5, y: height * 0.05, width: 90, height: height * 0.03))
        topicNumLabel.text = "topic_num"
        topicNumLabel.textColor = subTextColor
        topicNumLabel.font = subTextFont
        socialView.addSubview(topicNumLabel)
        
        friendLabel = UILabel(frame: CGRect(x: 100, y: 0, width: 90, height: height * 0.05))
        friendLabel.text = "好友"
        friendLabel.font = mainTextFont
        socialView.addSubview(friendLabel)
        
        friendNumLabel = UILabel(frame: CGRect(x: 100, y: height * 0.05, width: 90, height: height * 0.03))
        friendNumLabel.text = "friends_num"
        friendNumLabel.textColor = subTextColor
        friendNumLabel.font = subTextFont
        socialView.addSubview(friendNumLabel)
        
        newFriendView = UIView(frame: CGRect(x: 0, y: height * 0.32, width: width, height: height * 0.08))
        newFriendView.backgroundColor = .white
        view.addSubview(newFriendView)
        
        friendImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: height * 0.08, height: height * 0.08))
        friendImageView.backgroundColor = .black
        newFriendView.addSubview(friendImageView)
        
        newFriendLabel = UILabel(frame: CGRect(x: height * 0.1, y: 0, width: 100, height: height * 0.06))
        newFriendLabel.text = "新的好友"
        newFriendLabel.font = mainTextFont
        newFriendView.addSubview(newFriendLabel)
    }

    @objc func addFriend() {
        navigationController?.pushViewController(AddFriendViewController(), animated: true)
    }
}
