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
            logoImageView.image = UIImage(named: socialAccount.imageUrl)
            appTitle.text = socialAccount.title
            appLink.setTitle(socialAccount.url, for: .normal)
            appLink.setTitleColor(.black, for: .normal)
        }
    }
    
    fileprivate let logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    fileprivate let appTitle: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        return label
    }()
    
    fileprivate let appLink = UIButton()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        let stack = UIStackView(arrangedSubviews: [appTitle, appLink])
        stack.axis = .vertical
        stack.distribution = .fillProportionally
        
        addSubview(logoImageView)
        addSubview(stack)
        
        stack.translatesAutoresizingMaskIntoConstraints = false
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        
        logoImageView.heightAnchor.constraint(equalToConstant: 30).isActive = true
        logoImageView.widthAnchor.constraint(equalToConstant: 60).isActive = true
        logoImageView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        
        logoImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
        stack.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        stack.heightAnchor.constraint(equalToConstant: 40).isActive = true
        stack.leftAnchor.constraint(equalTo: logoImageView.rightAnchor, constant: 8).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(cider:) has not been implemented")
    }
}
