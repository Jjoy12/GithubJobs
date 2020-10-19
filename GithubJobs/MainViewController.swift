//
//  ViewController.swift
//  GithubJobs
//
//  Created by Jerrion Joy on 10/17/20.
//

import UIKit

class MainViewController: UICollectionViewController, UISearchBarDelegate{
    
    private let cellId = "SearchCellID"
    private let searchController = UISearchController(searchResultsController: nil)

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "GithubJobs API"
        collectionView.backgroundColor = .black
        collectionView.register(SearchViewCell.self, forCellWithReuseIdentifier: cellId)
        setupSearchBar()
        
    }
    
    let citySearchBar = UISearchBar()
    
    private func setupSearchBar() {
        definesPresentationContext = true
        navigationItem.searchController = self.searchController
        searchController.searchBar.delegate = self
        
        let textFieldInsideSearchBar = searchController.searchBar.value(forKey: "searchField") as? UITextField
        textFieldInsideSearchBar?.textColor = .black
        textFieldInsideSearchBar?.placeholder = "Position"
        
        searchController.view.addSubview(citySearchBar)
        citySearchBar.frame = CGRect(x: 10, y: searchController.searchBar.frame.height + 50, width: view.frame.size.width - 30, height: 50)
        citySearchBar.placeholder = "Location"
        citySearchBar.layer.cornerRadius = 12
        citySearchBar.delegate = self
        
        
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
        return UIEdgeInsets(top: 10.0, left: 1.0, bottom: 10, right: 1.0)
        
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! SearchViewCell
        cell.layer.cornerRadius = 12
        
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: view.frame.width - 20, height: 180)
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let detailsController = JobDetailsViewController()
        navigationController?.pushViewController(detailsController, animated: true)
    }
    
    init() {
        super.init(collectionViewLayout: UICollectionViewFlowLayout())
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init (coder: ) has not been implemented")
    }

    
}

extension MainViewController: UICollectionViewDelegateFlowLayout {
    
}
