//
//  HomeViewController.swift
//  Spotify Clone Attempt
//
//  Created by Abdulrahman on 3/15/22.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var recentsCollectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        let cellNib = UINib(nibName: "RecentsCollectionViewCell", bundle: nil)

        self.recentsCollectionView.register(cellNib, forCellWithReuseIdentifier: "recent")
        recentsCollectionView.dataSource = self
    }
}

extension HomeViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        20
    }

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        1
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = recentsCollectionView.dequeueReusableCell(withReuseIdentifier: "recent", for: indexPath) as? RecentsCollectionViewCell{
            cell.playlistCover = UIImageView(image: UIImage(named: "cover"))
            return cell
        }
        return UICollectionViewCell()
    }


}

