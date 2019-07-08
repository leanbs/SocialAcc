//
//  ViewController.swift
//  SocialAcc
//
//  Created by Davin on 09/07/19.
//  Copyright © 2019 Davin. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    fileprivate var cellId = "cellId"
    fileprivate var socialAccounts: [SocialAccount] = [
        SocialAccount(title: "Github", url: "https://github.com/leanbs", imageUrl: "github"),
        SocialAccount(title: "Twitter", url: "https://www.twitter.com/davinyii", imageUrl: "twitter"),
        SocialAccount(title: "Gmail", url: "davin.yu1110@gmail.com", imageUrl: "gmail"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        setupTableView()
    }
    
    fileprivate func setupTableView() {
        tableView.register(SocialAccountCell.self, forCellReuseIdentifier: cellId)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return socialAccounts.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! SocialAccountCell
        let socialAccount = socialAccounts[indexPath.row]
        cell.socialAccount = socialAccount
        //        cell.textLabel?.text = socialAccount.title
        //        cell.textLabel?.backgroundColor = .clear
        return cell
    }
    
    
}


