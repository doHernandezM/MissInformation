//
//  File.swift
//  
//
//  Created by MissInformation on 3/1/22.
//

import Foundation

//Do all downloading here.
class Downloader {
    var downloadThread: Thread?
    let configuration: Configuration
    
    init(configuration: Configuration) {
        self.configuration = configuration
    }
    
    
    func startVideoDownload() {
        downloadThread = Thread(block: downloadBlock)
        
        print("\r---DOWNLOADING YOUTUBE FILES---")
        downloadThread?.start()
    }
    
    func downloadBlock() -> () {
        
            for (_,video) in configuration.videoList.enumerated() {
                do {
                    if self.configuration.debug {
                        try print(downloadYoutubeVideo(video))
                    } else {
                        try _ = downloadYoutubeVideo(video)
                    }
                }
                catch {
                    print("Could not download \(video):\(error)") //handle or silence the error here
                }
            }
    
    }
    
}
