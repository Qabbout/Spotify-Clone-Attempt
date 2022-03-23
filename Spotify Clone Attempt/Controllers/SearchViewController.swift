//
//  SearchViewController.swift
//  Spotify Clone Attempt
//
//  Created by Abdulrahman on 3/15/22.
//

import UIKit

class SearchViewController: UIViewController, UISearchBarDelegate {

    @IBOutlet weak var searchBar: UISearchBar!
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self



        navigationItem.hidesSearchBarWhenScrolling = false
    }

    
    

}
