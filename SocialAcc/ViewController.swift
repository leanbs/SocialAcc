//
//  ViewController.swift
//  SocialAcc
//
//  Created by Davin on 09/07/19.
//  Copyright © 2019 Davin. All rights reserved.
//

import UIKit

struct SocialAccount {
    var title: String
    var url: String
    var imageUrl: String
}

class ViewController: UITableViewController {
    
    fileprivate var socialAccounts: [SocialAccount] = [
        SocialAccount(title: "Instagram", url: "https://www.instagram.com/davinyii", imageUrl: "instagram"),
        SocialAccount(title: "Twitter", url: "https://www.twitter.com/davinyii", imageUrl: "twitter"),
        SocialAccount(title: "Facebook", url: "https://www.facebook.com/davinyii", imageUrl: "facebook"),
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        setupTableView()
    }
    
    fileprivate func setupTableView() {
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cellId")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return socialAccounts.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 40
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
        let socialAccount = socialAccounts[indexPath.row]
        cell.textLabel?.text = socialAccount.title
        return cell
    }


}

