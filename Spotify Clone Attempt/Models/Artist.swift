//
//  Artist.swift
//  Spotify Clone Attempt
//
//  Created by Abdulrahman on 3/19/22.
//

import Foundation
import UIKit

struct Artist {
    let name: String = "The Weeknd"
    let imageString: String = "artist"
    let albums: [Album] = [Album(),Album(),Album(),Album(),Album(),Album()]
    let songs: [Song] = [Song(),Song(),Song(),Song(),Song(),Song()]
    
}
