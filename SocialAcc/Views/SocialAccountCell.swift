//
//  SocialAccountCell.swift
//  SocialAcc
//
//  Created by Davin on 09/07/19.
//  Copyright © 2019 Davin. All rights reserved.
//

import UIKit

class SocialAccountCell: UITableViewCell {
    var socialAccount: SocialAccount? {
        didSet {
            guard let socialAccount = socialAccount else { return }
            print(socialAccount.title)
            self.textLabel?.text = socialAccount.title
            self.textLabel?.backgroundColor = .clear
        }
    }
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.backgroundColor = .yellow
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(cider:) has not been implemented")
    }
}
