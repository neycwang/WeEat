//
//  AddFriendViewController.swift
//  WeEat
//
//  Created by apple on 2017/11/20.
//  Copyright © 2017年 Wang. All rights reserved.
//

import UIKit

class AddFriendViewController: UIViewController {
    
    var width, height: CGFloat!
    var searchBar: UISearchBar!
    var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        prepareData()
        buildUI()
    }
    
    func buildUI() {
        navigationController?.navigationBar.isHidden = false
        title = "添加好友"
        
        view.backgroundColor = .white
        
        width = view.frame.width
        height = view.frame.height
        
        searchBar = UISearchBar(frame: CGRect(x: 0, y: 50, width: width, height: 30))
        searchBar.delegate = self
        searchBar.returnKeyType = .search
        searchBar.showsCancelButton = true
        view.addSubview(searchBar)
        
        tableView = UITableView(frame: CGRect(x: 0, y: 100, width: width, height: height - 100))
        tableView.register(FriendTableViewCell.self, forCellReuseIdentifier: "FriendTableViewCell")
        tableView.rowHeight = 50
        tableView.delegate = self
        tableView.dataSource = self
        view.addSubview(tableView)
    }
    
    var tableViewData: [String]!
    
    func prepareData() {
        tableViewData = []
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        navigationController?.navigationBar.isHidden = true
    }
}

extension AddFriendViewController: UISearchBarDelegate {
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
        tableViewData = []
        tableView.reloadData()
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        tableViewData = []
        if searchText != "" {
            for i in 0 ..< 100 {
                if "\(i)".hasPrefix(searchText) {
                    tableViewData.append("\(i)")
                }
            }
        }
        tableView.reloadData()
    }
}

extension AddFriendViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableViewData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FriendTableViewCell", for: indexPath) as! FriendTableViewCell
        cell.usernameLabel.text = tableViewData[indexPath.row]
        return cell
    }
}
