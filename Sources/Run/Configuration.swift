//
//  File.swift
//  
//
//  Created by MissInformation on 3/1/22.
//

import Foundation

enum OperatingSystem: Int {
case macOS, linux, windoze
}

struct Config: Codable {
    var OS = OperatingSystem.macOS.rawValue
    
    var setupServer = true
    var setupContent = true
    
    var ytdlLocation = "https://github.com/yt-dlp/yt-dlp.git"
    
    var videoList: [String] = ["9m0ZeOepb3Q"]
    var playList: String? = nil
}
