//
//  File.swift
//  
//
//  Created by MissInformation on 3/1/22.
//

import Foundation

func firstInit() {
    // Example usage:
    do {
        print("\r ---CLONING YT_DLP---")
        try  print( safeShell("git clone " + Config().ytdlLocation))

        print("\r---MAKING YT_DLP---")
//        try  print( safeShell("make " + "yt-dlp"))
        
        try print(maker())
        
        print("\r---DOWNLOADING YOUTUBE FILE---")
        try print(downloadYoutubeFile())
    }
    catch {
        print("\(error)") //handle or silence the error here
    }

}
