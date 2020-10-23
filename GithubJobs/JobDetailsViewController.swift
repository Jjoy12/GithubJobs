//
//  JobDetailsViewController.swift
//  GithubJobs
//
//  Created by Jerrion Joy on 10/18/20.
//

import UIKit
import SafariServices

class JobDetailsViewController: UIViewController {
    

    let logoImageView = AspectFitImageView(image: UIImage(named: "Image"), cornerRadius: 12)
//Company Label
    let companyLabel: UILabel = {
        let label = UILabel()
        label.text = "Awesome company"
        label.font = .boldSystemFont(ofSize: 17)
        label.textColor = .label
        
        return label
        
    }()
    
// Title label
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "The iOS Company"
        label.font = .systemFont(ofSize: 16)
        label.textColor = .label
        
        return label
    }()
    
//    Job type label
    let jobTypeLabel: UILabel = {
        let label = UILabel()
        label.text = "iOS Developer"
        label.font = .systemFont(ofSize: 16)
        label.textColor = .label
        
        return label
    }()
    
//location label
    let locationLabel: UILabel = {
        let label = UILabel()
        label.text = "Dayton, Ohio"
        label.font = .systemFont(ofSize: 16)
        label.textColor = .label
        
        return label
    }()
    
// Visit company website url button
    var companyUrl = "https://www.dice.com/jobs/detail/iOS-Developer-Capgemini-America%2C-Inc.-Malvern-PA-19355/KANBAY/6713380"
// Apply button url
    var applyUrl = "https://www.google.com/?client=safari"
    
    let urlButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Visit Companies Website", for: .normal)
        button.tintColor = .white
        button.backgroundColor = .systemBlue
        button.addTarget(self, action: #selector(handleCompanyURL), for: .touchUpInside)
        button.layer.cornerRadius = 15
        
        return button
    }()
    
    @objc func handleApplyURL() {
        
        if applyUrl == "" {
            let ac = UIAlertController(title: "Link is not available to apply for this job", message: nil, preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "Ok", style: .default))
            present(ac, animated: true)
        }
        
        
        
        guard let url = URL(string: applyUrl) else {return}
        let svc = SFSafariViewController(url: url)
        self.present(svc, animated: true)
    }
    
    @objc func handleCompanyURL() {
        
        if companyUrl == "" {
            let ac = UIAlertController(title: "Link is not available", message: nil, preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "Ok", style: .default))
            present(ac, animated: true)
        }
        
        
        
        guard let url = URL(string: companyUrl) else {return}
        let svc = SFSafariViewController(url: url)
        self.present(svc, animated: true)
    }
    
    
//Text view
    let descriptionTextView: UITextView = {
        let textView = UITextView()
        textView.font = .systemFont(ofSize: 16)
        textView.textAlignment = .left
        textView.text = "wsdjhbfhabsdskhfbcfbdsfkhjbsdfkjhbfkhbAFJSbsddfjkhbasvjhbjhbHJBSDCJHBSDCJHBSCJHBCHBDCHBhdvjhbdvhbdvkjhbsdvjkhbdfvjhkbdfvjhkbdffvjhbdvjkhbdvjhbaweflkjnavjnsdfvlkjnadsfklvjndfvkjlndflvkjnasdfvlkjnasdsvlkjnasvlkjnbasdvljkhabnsvlkjbnsdfvlbhjf fvlhbjdfiufvijlbnafvDuring the candidate's time in the program other rotational assignments are available in Digital Technologies departments throughout Fire & Security Products, Refrigeration, Commercial HVAC, Residential HVAC and CARRIER Corporate Headquarters. Our dedication to you is to provide front-line, hands-on, meaningful assignments designed to stretch your capabilities and improve your learning. Each associate will have the opportunity to experience different functional rotations within 3 of the following areas Cybersecurity & Risk Management, Data Science & Analytics, Enterprise Business Systems, Infrastructure Services, Product & Project Management, Software Development and User Experience Design."
        textView.backgroundColor = .cyan
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
        button.addTarget(self, action: #selector(handleApplyURL), for: .touchUpInside)
        
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

