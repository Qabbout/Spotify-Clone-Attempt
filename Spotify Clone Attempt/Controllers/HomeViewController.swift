//
//  HomeViewController.swift
//  Spotify Clone Attempt
//
//  Created by Abdulrahman on 3/15/22.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var recentsCollectionView: UICollectionView!

    @IBOutlet weak var playlistsTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        let recentsCellNib = UINib(nibName: "RecentsCollectionViewCell", bundle: nil)
        self.recentsCollectionView.register(recentsCellNib, forCellWithReuseIdentifier: "recent")
        self.recentsCollectionView.dataSource = self

        let playlistsCellNib = UINib(nibName: "PlaylistsTableViewCell", bundle: nil)
        self.playlistsTableView.register(playlistsCellNib, forCellReuseIdentifier: "playlist")
        self.playlistsTableView.dataSource = self
        self.playlistsTableView.delegate = self

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
        if let cell = recentsCollectionView.dequeueReusableCell(withReuseIdentifier: "recent", for: indexPath) as? RecentsCollectionViewCell {
            cell.playlistCover = UIImageView(image: UIImage(named: "cover"))
            return cell
        }
        return UICollectionViewCell()
    }


}


extension HomeViewController : UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = self.playlistsTableView.dequeueReusableCell(withIdentifier: "playlist") as? PlaylistsTableViewCell {

            return cell
        }
        return UITableViewCell()
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        15
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
            case 0:
                return "Made For You"
            case 1:
                return "Discover Something New"
            case 2:
                return "Based on your recent listening"
            case 3:
                return "Music to stay up to date"
            case 4:
                return "Your playlists"
            case 5:
                return "Rap"
            case 6:
                return "HipHop"
            case 7:
                return "Made For You"
            case 8:
                return "Discover Something New"
            case 9:
                return "Based on your recent listening"
            case 10:
                return "Music to stay up to date"
            case 11:
                return "Your playlists"
            case 12:
                return "Rap"
            case 13:
                return "HipHop"
            default:
                return "Others"
        }
    }

    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int)
    {
    let header = view as! UITableViewHeaderFooterView
    header.textLabel?.font = UIFont.systemFont(ofSize: 20, weight: .heavy)
    header.textLabel?.textColor = UIColor.white
    }


}

