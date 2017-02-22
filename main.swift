#!/usr/bin/env swift
import Foundation
var subProcessSourceFilePath = "./subprocess.rb"
if let sourceDir = ProcessInfo.processInfo.environment["SourceDir"] {
  subProcessSourceFilePath = sourceDir.appending("/subprocess.rb")
}
let process = Process()
process.launchPath = subProcessSourceFilePath
process.launch()
process.waitUntilExit()

