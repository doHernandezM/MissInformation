//
//  File.swift
//  
//
//  Created by MissInformation on 3/1/22.
//

import Foundation

func setup() {
    do {
        print("\r ---CLONING YT_DLP---")
        try  print( safeShell("git clone " + Configuration().ytdlLocation + " .\(configuration.youtubeDLURL)"))

        print("\r---MAKING YT_DLP---")
        try print(maker())
    }
    catch {
        print("\(error)") //handle or silence the error here
    }

}
