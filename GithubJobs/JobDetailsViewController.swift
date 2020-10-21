//
//  JobDetailsViewController.swift
//  GithubJobs
//
//  Created by Jerrion Joy on 10/18/20.
//

import UIKit

class JobDetailsViewController: UIViewController {
    

    let logoImageView = AspectFitImageView(image: UIImage(named: "Image"), cornerRadius: 12)
    
    let companyLabel: UILabel = {
        let label = UILabel()
        label.text = "Awesome company"
        label.font = .boldSystemFont(ofSize: 17)
        label.textColor = .label
        
        return label
        
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "iOS Developer"
        label.font = .systemFont(ofSize: 16)
        label.textColor = .label
        
        return label
    }()
    
    let jobTypeLabel: UILabel = {
        let label = UILabel()
        label.text = "iOS Developer"
        label.font = .systemFont(ofSize: 16)
        label.textColor = .label
        
        return label
    }()
    
    let locationLabel: UILabel = {
        let label = UILabel()
        label.text = "iOS Developer"
        label.font = .systemFont(ofSize: 16)
        label.textColor = .label
        
        return label
    }()
    
    let urlButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Visit Companies Website", for: .normal)
        button.tintColor = .white
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 15
        
        return button
    }()
    
    let descriptionTextView: UITextView = {
        let textView = UITextView()
        textView.font = .systemFont(ofSize: 16)
        textView.textAlignment = .left
        textView.text = "wsdjhbfhabsdskhfbcfbdsfkhjbsdfkjhbfkhbAFJSbsddfjkhbasvjhbjhbHJBSDCJHBSDCJHBSCJHBCHBDCHBhdvjhbdvhbdvkjhbsdvjkhbdfvjhkbdfvjhkbdffvjhbdvjkhbdvjhbaweflkjnavjnsdfvlkjnadsfklvjndfvkjlndflvkjnasdfvlkjnasdsvlkjnasvlkjnbasdvljkhabnsvlkjbnsdfvlbhjf fvlhbjdfiufvijlbnafvDuring the candidate's time in the program other rotational assignments are available in Digital Technologies departments throughout Fire & Security Products, Refrigeration, Commercial HVAC, Residential HVAC and CARRIER Corporate Headquarters. Our dedication to you is to provide front-line, hands-on, meaningful assignments designed to stretch your capabilities and improve your learning. Each associate will have the opportunity to experience different functional rotations within 3 of the following areas Cybersecurity & Risk Management, Data Science & Analytics, Enterprise Business Systems, Infrastructure Services, Product & Project Management, Software Development and User Experience Design."
        textView.backgroundColor = .systemBlue
        textView.isEditable = false
        textView.layer.cornerRadius = 12
        
        return textView
    }()
    
    let applyButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("APPLY", for: .normal)
        button.tintColor = .white
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 15
        
        return button
    }()

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(logoImageView)
        
// constraints
        logoImageView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: nil, bottom: nil, trailing: view.trailingAnchor, padding: .init(top: 10, left: 10, bottom: 10, right: 10), size: .init(width: 80, height: 10))

        let stackView = UIStackView(arrangedSubviews: [companyLabel,titleLabel,jobTypeLabel,locationLabel,urlButton])
        view.addSubview(stackView)
        stackView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: logoImageView.leadingAnchor, padding: .init(top: 10, left: 20, bottom: 20, right: 20))
        stackView.axis = .vertical
        stackView.spacing = 10
        
        view.addSubview(descriptionTextView)
        descriptionTextView.anchor(top: stackView.bottomAnchor, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor, padding: .init(top: 10, left: 20, bottom: 20, right: 20))
        view.addSubview(applyButton)
        applyButton.anchor(top: descriptionTextView.bottomAnchor, leading: view.leadingAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, trailing: view.trailingAnchor, padding: .init(top: 10, left: 70, bottom: 30, right: 70))
        
        
        
    }
    
}

