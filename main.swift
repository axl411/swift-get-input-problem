#!/usr/bin/env swift
import Foundation
let process = Process()
process.launchPath = "./b.swift"
process.launch()
process.waitUntilExit()