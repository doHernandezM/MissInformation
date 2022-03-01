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
        try  print( safeShell("ls -la"))
        try  print( safeShell("git clone " + ""))
    }
    catch {
        print("\(error)") //handle or silence the error here
    }

}
