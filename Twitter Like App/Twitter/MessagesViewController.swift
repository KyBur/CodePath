//
//  MessagesViewController.swift
//  Twitter
//
//  Created by Kyle Burns on 3/14/20.
//  Copyright © 2020 Dan. All rights reserved.
//

import UIKit

class MessagesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        
        let searchBar = UISearchBar()
        searchBar.placeholder = "Search for people and groups"
        searchBar.frame = CGRect(x: 0, y: 0, width: (navigationController?.view.bounds.size.width)!, height: 64)
        searchBar.setSearchBarProperties(searchBar: searchBar)
        searchBar.backgroundImage = UIImage()
        
        view.addSubview(searchBar)
        
        let selectedBarBackgroundView = UIView()
        selectedBarBackgroundView.backgroundColor = .lightGray
        view.insertSubview(selectedBarBackgroundView, belowSubview: searchBar)
        selectedBarBackgroundView.heightAnchor.constraint(equalToConstant: 0.3).isActive = true
        selectedBarBackgroundView.bottomAnchor.constraint(equalTo: searchBar.bottomAnchor, constant: 7).isActive = true
        selectedBarBackgroundView.leadingAnchor.constraint(equalTo: searchBar.leadingAnchor, constant: 0).isActive = true
        selectedBarBackgroundView.trailingAnchor.constraint(equalTo: searchBar.trailingAnchor, constant: 0).isActive = true
        selectedBarBackgroundView.translatesAutoresizingMaskIntoConstraints = false
        
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
