//
//  SearchViewController.swift
//  Spotify Clone Attempt
//
//  Created by Abdulrahman on 3/15/22.
//

import UIKit

class SearchViewController: UIViewController, UISearchBarDelegate {




    @IBOutlet weak var genresCollectionView: UICollectionView!

    @IBOutlet weak var searchBar: UISearchBar!
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self

        let headerCellNib = UINib(nibName: "GenresCollectionViewHeader", bundle: nil)
        let itemCellNib = UINib(nibName: "GenresCollectionViewItemCell", bundle: nil)
        self.genresCollectionView.register(headerCellNib, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "header")
        self.genresCollectionView.register(itemCellNib, forCellWithReuseIdentifier: "genre")
    }




}

extension SearchViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch section {
            case 0:
                return 4
            default:
                return 20
        }
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        2
    }


    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "genre", for: indexPath)
        cell.backgroundColor = .blue

        return cell
    }

    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let headerCell = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "header", for: indexPath) as! GenresCollectionViewHeader


        if indexPath.section == 0{


            headerCell.label.text = "Your genres"
            return headerCell
        }
        else if indexPath.section == 1 {

            headerCell.label.text = "Discover all genres"
            return headerCell
        }
        else {
            headerCell.frame = CGRect.zero
            return headerCell

        }


    }

}
