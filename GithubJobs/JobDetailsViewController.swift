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
    
// Convert html
   func convertHtml(text: String, attributedText: inout NSAttributedString) -> NSAttributedString {
        let data = Data(text.utf8)
      //  let options = [NSAttributedString.DocumentReadingOptionKey: Any] = [.documentType: NSAttributedString.DocumentType.html, .characterEncoding: String.Encoding.utf8.rawValue]
    
//        if let attributedString = try? NSMutableAttributedString(data: data, options: options, nil) {
  //          attributedText = attributedString
          return attributedText
            
  //      }
    }
    
    var htmlText = """
                <p>PollyEx is a mortgage technology company creating a modern data driven capital markets ecosystem though our loan exchange and pricing engine. Our products deeply integrate with loan origination systems, financial market data providers and other partners throughout the loan sale life cycle; automating capital market functions and optimizing gain on sale execution.</p>\n<p>PollyEx is backed by prominent Silicon Valley venture firms including Meritech, Khosla, NYCA, Fifth Wall and Base10.</p>\n<p><strong>The Role</strong>\nYou will have an impact on the design, architecture and implementation of markets that are often called the engine of US economy.  You will work with both government backed and industry leading companies to create a digital pipeline that facilitates real time trading of loans.  We value drive for excellence, independent thinking, teamwork and curiosity.</p>\n<p><strong>Why you should join PollyEx</strong></p>\n<ul>\n<li>We are attacking a trillion dollar market with gross inefficiencies.</li>\n<li>We have an experienced team that has built large and impactful platforms before.</li>\n<li>Fast and flexible team that ships new features every day.</li>\n<li>Competitive salary, equity, vision/dental/medical benefits.</li>\n<li>Backing of top tier VCs: Meritech, Khosla, NYCA, Fifth Wall and Base10.</li>\n<li>Flexible hours and location.</li>\n<li>Latest technology: Python, Django, Vue.js, AWS</li>\n<li>Ability to work with industry and government leaders.</li>\n</ul>\n<p><strong>Responsibilities</strong></p>\n<ul>\n<li>Build web applications and services using Python, Django, JavaScript, Vue.js, Postgres, AWS and Heroku.</li>\n<li>Diagnose and resolve technical problems; build unit tests and automation to ensure the quality of your features.</li>\n<li>Maintain existing code and write code that is easily maintainable through documentation, good architecture and automated testing.</li>\n<li>Define, discuss and work with the team on the architecture of the platform.</li>\n<li>Actively participate in interviewing and evaluating new team members</li>\n<li>Provide vision and direction for software development best practices &amp; methodologies.</li>\n<li>Mentor junior members of the software engineering team in all aspects of software development across multiple projects with multiple customers.</li>\n<li>Prioritize your work and the work of others with a sense of urgency to ship products in time to have the desired business impact.</li>\n<li>Review code, help drive technical excellence through best practices and latest tools.</li>\n<li>Maintain a working knowledge of advances and trends in programming and technology</li>\n<li>Generate ideas for innovative technological solutions.</li>\n</ul>\n<p><strong>Qualifications</strong></p>\n<ul>\n<li>7+ Years of full stack engineering experience with recent production experience using Python/Django or Ruby on Rails</li>\n<li>5+ Years using SQL with Postgres/MySQL</li>\n<li>Strong computer science fundamentals in data structures, algorithms, and mastery of object-oriented programming</li>\n<li>Understanding of secure coding practices and common vulnerabilities.</li>\n<li>Multiple shipped enterprise SaaS products.</li>\n<li>Bachelor’s Degree in Computer Science.</li>\n<li>Action oriented attitude.</li>\n</ul>\n<p><em>PollyEx is an Equal Opportunity Employer. All qualified applicants will receive consideration for employment without regard to race, age, color, religion, gender, national origin, disability, sexual orientation or veteran status.</em></p>\n
                """
    
    
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
        descriptionTextView.attributedText = convertHtml(text: htmlText, attributedText: &descriptionTextView.attributedText)
        
        
        
    }
    
}

