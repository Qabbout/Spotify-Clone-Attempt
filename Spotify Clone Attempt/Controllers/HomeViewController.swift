//
//  HomeViewController.swift
//  Spotify Clone Attempt
//
//  Created by Abdulrahman on 3/15/22.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let navBarView = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 30))

        navBarView.backgroundColor = .red
        navigationItem.titleView = navBarView

    }




}

