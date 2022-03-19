//
//  CustomTabBarController.swift
//  Spotify Clone Attempt
//
//  Created by Abdulrahman on 3/19/22.
//

import UIKit

class CustomTabBarController: UITabBarController {

    private var containerView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()



    }

    private func setupUI() {

        let containerView = UIView()
        containerView.backgroundColor = .black
        containerView.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(containerView)
        containerView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        containerView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        containerView.bottomAnchor.constraint(equalTo: tabBar.topAnchor).isActive = true
        containerView.heightAnchor.constraint(equalToConstant: 60).isActive = true


        let playerStackView = UIStackView()
        playerStackView.axis = .horizontal
        playerStackView.distribution = .fill

        containerView.addSubview(playerStackView)

        playerStackView.translatesAutoresizingMaskIntoConstraints = false
        playerStackView.topAnchor.constraint(equalTo: containerView.topAnchor).isActive = true
        playerStackView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor).isActive = true
        playerStackView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 10).isActive = true
        playerStackView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -20).isActive = true
        playerStackView.heightAnchor.constraint(equalTo: containerView.heightAnchor).isActive = true
        playerStackView.spacing = 15




        let coverImageView = UIImageView()
        coverImageView.image = UIImage(named: "artist")
        coverImageView.contentMode = .scaleAspectFit
        coverImageView.translatesAutoresizingMaskIntoConstraints = false
        coverImageView.widthAnchor.constraint(equalToConstant: 60).isActive = true

        coverImageView.setContentHuggingPriority(.init(rawValue: 1), for: .horizontal)

        playerStackView.addArrangedSubview(coverImageView)



        let songStackView = UIStackView()
        songStackView.axis = .vertical
        songStackView.distribution = .fillProportionally
        songStackView.alignment = .fill




        let songNameLabel = UILabel()
        songNameLabel.textColor = .white
        songNameLabel.font = UIFont.systemFont(ofSize: 13, weight: .heavy)
        songNameLabel.text = "Save your tears"




        let songArtistLabel = UILabel()
        songArtistLabel.textColor = .white
        songArtistLabel.font = UIFont.systemFont(ofSize: 11, weight: .bold)
        songArtistLabel.text = "The Weeknd"


        songStackView.addArrangedSubview(songNameLabel)
        songStackView.addArrangedSubview(songArtistLabel)

        playerStackView.addArrangedSubview(songStackView)




        let spaceView = UIView()
        playerStackView.addArrangedSubview(spaceView)

        let connectButton = UIButton()

        connectButton.setImage(UIImage(systemName: "rectangle.connected.to.line.below"), for: .normal)
        connectButton.tintColor = .gray


        let heartButton = UIButton()

        heartButton.setImage(UIImage(systemName: "heart.fill"), for: .normal)
        heartButton.tintColor = .green


        let playButton = UIButton()

        playButton.setImage(UIImage(systemName: "play.fill"), for: .normal)
        playButton.tintColor = .gray



        let controlsStackView = UIStackView()
        controlsStackView.distribution = .fillProportionally
        controlsStackView.addArrangedSubview(connectButton)
        controlsStackView.addArrangedSubview(heartButton)
        controlsStackView.addArrangedSubview(playButton)
        controlsStackView.spacing = 10

        playerStackView.addArrangedSubview(controlsStackView)



    }





}
