//
//  SearchViewController.swift
//  Spotify Clone Attempt
//
//  Created by Abdulrahman on 3/15/22.
//

import UIKit

class SearchViewController: UIViewController, UISearchBarDelegate {
    var addedFirstHeader: Bool = false
    var addedSecondHeader: Bool = false


    @IBOutlet weak var genresCollectionView: UICollectionView!

    @IBOutlet weak var searchBar: UISearchBar!
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self

        let headerCellNib = UINib(nibName: "GenresCollectionViewHeader", bundle: nil)
        self.genresCollectionView.register(headerCellNib, forCellWithReuseIdentifier: "header")
    }




}

extension SearchViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        2
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        5
    }


    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "genre", for: indexPath)
        cell.backgroundColor = .blue

        return cell
    }

    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let headerCell = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "header", for: indexPath)
        let headerView = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 40))
        headerCell.addSubview(headerView)


        if indexPath.section == 0 && addedFirstHeader == false {
            addedFirstHeader = true
            headerView.text = "Your genres"
            return headerCell
        }
        else if indexPath.section == 2 && addedSecondHeader == false {
            addedSecondHeader = true
            headerView.text = "Discover"
            return headerCell
        }
        else {
            headerView.frame = CGRect.zero
            return headerCell

        }


    }

}
