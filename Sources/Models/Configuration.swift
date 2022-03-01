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

struct Configuration: Codable {
    let OS = OperatingSystem.macOS.rawValue
    
    let setupServer = true
    let setupContent = true
    
    let ytdlLocation = "https://github.com/yt-dlp/yt-dlp.git"
    
    let videoList: [String] = ["9m0ZeOepb3Q"]
    let playList: String? = nil
}
