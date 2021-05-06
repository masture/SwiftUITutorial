//
//  Profile.swift
//  Landmarks
//
//  Created by Pankaj Kulkarni on 06/05/21.
//

import Foundation

struct Profile {
    var username: String
    var preferNotification = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()
    
    static let `default` = Profile(username: "pankaj")
    
    
    enum Season: String, CaseIterable, Identifiable {
        case spring = "🌹"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "⛄️"
        
        var id: String { self.rawValue }
    }
    
}
