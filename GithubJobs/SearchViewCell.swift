//
//  SeaarchViewCell.swift
//  GithubJobs
//
//  Created by Jerrion Joy on 10/18/20.
//

import UIKit

class SearchViewCell: UICollectionViewCell {
//Image View
    let logoImageView: UIImageView = {
       let iv = UIImageView()
        iv.image = UIImage(named: "Image")
        iv.contentMode = .scaleAspectFit
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.layer.cornerRadius = 12
        return iv
    }()
// Label closures

    let companyLabel: UILabel = {
       let label = UILabel()
        label.text = "Awesome Company"
        label.font = .boldSystemFont(ofSize: 16)
        label.numberOfLines = 0
        label.textColor = .label
        return label
    }()
    
    let titleLabel: UILabel = {
       let label = UILabel()
        label.text = "iOS Developer"
        label.font = .systemFont(ofSize: 16)
        label.numberOfLines = 0
        label.textColor = .label
        return label
    }()
    
    let locationLabel: UILabel = {
        let label = UILabel()
        label.text = "Seattle, WA"
        label.font = .systemFont(ofSize: 16)
        label.numberOfLines = 0
        label.textColor = .label
        return label
        
    }()
    
    let typeLabel: UILabel = {
        let label = UILabel()
        label.text = "iOS Engineer"
        label.font = .systemFont(ofSize: 16)
        label.numberOfLines = 0
        label.textColor = .label
        return label
        
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .gray
        addSubview(logoImageView)
        logoImageView.anchor(top: topAnchor, leading: nil, bottom: nil, trailing: trailingAnchor, padding: .init(top: 10, left: 10, bottom: 0, right: 10), size: .init(width: 80, height: 100))
//Declare Stack View
        let stackView = UIStackView(arrangedSubviews: [companyLabel,titleLabel,typeLabel,locationLabel])
// Add subView
        addSubview(stackView)
// Stack view contraints
        stackView.anchor(top: topAnchor, leading: leadingAnchor, bottom: nil, trailing: logoImageView.leadingAnchor, padding: .init(top: 10, left: 20, bottom: 0, right: 20))
        stackView.axis = .vertical
        stackView.spacing = 10
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder: ) has not been implemented" )
    }
}
