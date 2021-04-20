//
//  StudySwiftUIApp.swift
//  StudySwiftUI
//
//  Created by Money Ai on 2021/4/14.
//

import SwiftUI

@main
struct StudySwiftUIApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
