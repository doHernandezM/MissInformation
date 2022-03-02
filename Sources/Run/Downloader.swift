//
//  File.swift
//  
//
//  Created by MissInformation on 3/1/22.
//

import Foundation

//Do all content downloading here.
class Downloader {
   let configuration: Configuration
    
    init(configuration: Configuration) {
        self.configuration = configuration
    }
    
    func startVideoDownload() {
        print("\r---DOWNLOADING YOUTUBE FILES---")
    
            for (_,video) in self.configuration.videoList.enumerated() {
                do {
                    try print(downloadYoutubeVideo(video))
                }
                catch {
                    print("Could not download \(video):\(error)") //handle or silence the error here
                }
            }
    }
}
