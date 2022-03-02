//
//  File.swift
//  
//
//  Created by MissInformation on 3/1/22.
//

import Foundation

//The main config file is mainly for a hardwriiten backup. In time fetching from a local or web file will be supported.
struct Configuration: Codable {
    var setupServer = true
    var setupContent = true
    
    var ytdlLocation = "https://github.com/yt-dlp/yt-dlp.git"
    
    var videoList: [String] = ["9m0ZeOepb3Q"]
    var playList: String? = nil
}
