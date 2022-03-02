//
//  File.swift
//  
//
//  Created by MissInformation on 3/1/22.
//

import Foundation

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

func maker() throws -> String {
    let task = Process()
    let pipe = Pipe()

    task.standardOutput = pipe
    task.standardError = pipe
    task.arguments = ["-C", "./yt-dlp"]
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
    task.arguments = ["-C", video]
    task.executableURL = URL(fileURLWithPath: "./yt-dlp/yt-dlp") //<--updated

    try task.run() //<--updated

    let data = pipe.fileHandleForReading.readDataToEndOfFile()
    let output = String(data: data, encoding: .utf8)!

    return output
}
