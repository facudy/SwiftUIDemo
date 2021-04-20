//
//  Profile.swift
//  StudySwiftUI
//
//  Created by Money Ai on 2021/4/20.
//

import Foundation

struct Profile {
    var username: String
    var prefersNotification = true
    var seasonalPhoto = Season.spring
    var goalDate = Date()
    
    static let `default` = Profile(username: "Money Ai")
    
    enum Season: String, CaseIterable, Identifiable {
        case spring = "🌷"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "☃️"
        
        var id: String {
            self.rawValue
        }
    }
}
