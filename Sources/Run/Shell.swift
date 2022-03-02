//
//  File.swift
//  
//
//  Created by MissInformation on 3/1/22.
//

import Foundation

//I got lazy and just copied the same code, but this can be can be probable be condensed.
//OR these can be specialized.

//Generic shell
func safeShell(_ command: String) throws -> String {
    let task = Process()
    let pipe = Pipe()
    
    task.standardOutput = pipe
    task.standardError = pipe
    task.arguments = ["-c", command]
    task.executableURL = URL(fileURLWithPath: "/bin/zsh") //<--updated
    
    try task.run() //<--updated
    
    let data = pipe.fileHandleForReading.readDataToEndOfFile()
    let output = String(data: data, encoding: .utf8)!
    
    return output
}

//Downloads 
func maker() throws -> String {
    let task = Process()
    let pipe = Pipe()
    
    task.standardOutput = pipe
    task.standardError = pipe
    task.arguments = ["-C", ".\(configuration.youtubeDLURL)"]
    task.executableURL = URL(fileURLWithPath: "/usr/bin/make") //<--updated
    
    try task.run() //<--updated
    
    let data = pipe.fileHandleForReading.readDataToEndOfFile()
    let output = String(data: data, encoding: .utf8)!
    
    return output
}

func downloadYoutubeVideo(_ video: String) throws -> String {
    let task = Process()
    let pipe = Pipe()
    
    task.standardOutput = pipe
    task.standardError = pipe
    
    //Save bandwidth by note overwritting the file each time.
    var ytdlArguments:[String] = []
    ytdlArguments = [video,"-P \(configuration.resourcesURL)/Content","-o %(id)s.%(ext)s"]
    if !configuration.overwriteContent{
        ytdlArguments.append("-w")
    }
    
    task.arguments = ytdlArguments
    task.executableURL = URL(fileURLWithPath: ".\(configuration.youtubeDLURL)/yt-dlp") //<--updated
    
    try task.run()
    
    let data = pipe.fileHandleForReading.readDataToEndOfFile()
    let output = String(data: data, encoding: .utf8)!
    
    return output
}
