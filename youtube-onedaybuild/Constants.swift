//
//  Constants.swift
//  youtube-onedaybuild
//
//  Created by Simileoluwa Aluko on 25/08/2020.
//  Copyright © 2020 Simileoluwa Aluko. All rights reserved.
//

import Foundation

struct Constants {
    static var apiKey = "AIzaSyAMn4bMB65UBq-b-NsAQ_BQggOgo7PB76k"
    static var playlistId = "PLMRqhzcHGw1ZkH8RuznGMS0NZs0jWQQ5a"
    static var apiURL = "https://www.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(playlistId)&key=\(apiKey)"
}
