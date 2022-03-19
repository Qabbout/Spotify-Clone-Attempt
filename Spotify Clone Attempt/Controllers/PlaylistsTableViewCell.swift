//
//  PlaylistsTableViewCell.swift
//  Spotify Clone Attempt
//
//  Created by Abdulrahman on 3/19/22.
//

import UIKit

class PlaylistsTableViewCell: UITableViewCell {

    @IBOutlet var playlistsCollectionView: UICollectionView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .horizontal
        flowLayout.itemSize = CGSize(width: 128, height: 160)
        flowLayout.minimumLineSpacing = 2.0
        flowLayout.minimumInteritemSpacing = 5.0
        self.playlistsCollectionView.collectionViewLayout = flowLayout
        self.playlistsCollectionView.showsHorizontalScrollIndicator = false
        self.playlistsCollectionView.dataSource = self
        let cellNib = UINib(nibName: "RecentsCollectionViewCell", bundle: nil)
        self.playlistsCollectionView.register(cellNib, forCellWithReuseIdentifier: "recent")

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

extension PlaylistsTableViewCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        20
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = playlistsCollectionView.dequeueReusableCell(withReuseIdentifier: "recent", for: indexPath) as? RecentsCollectionViewCell {

            cell.playlistCover.image = UIImage(named: "cover")
            cell.playlistLabel.text = "Today's Top Hits"
            return cell
        }
        return UICollectionViewCell()
    }

    

}
