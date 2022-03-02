//
//  File.swift
//  
//
//  Created by MissInformation on 3/1/22.
//

import Foundation

func setup() {
    // Example usage:
    do {
        print("\r ---CLONING YT_DLP---")
        try  print( safeShell("git clone " + Configuration().ytdlLocation))

        print("\r---MAKING YT_DLP---")
        try print(maker())
    }
    catch {
        print("\(error)") //handle or silence the error here
    }

}
