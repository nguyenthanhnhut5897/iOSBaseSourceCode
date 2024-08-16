//
//  CUserDTO.swift
//  TymeXTest
//
//  Created by Thanh Nhut on 12/7/24.
//

import UIKit

struct CUserDTO: Codable {
    let username: String?
    let landingPageUrl: String?
    let avatarUrl: String?
    let location: String?
    let followers: Int?
    let following: Int?
    
    enum CodingKeys: String, CodingKey {
        case landingPageUrl = "html_url"
        case avatarUrl = "avatar_url"
        case username = "login"
        case location, followers, following
    }
    
    func transferToUser() -> CUser {
        return CUser(username: username, 
                     landingPageUrl: landingPageUrl,
                     avatarUrl: avatarUrl,
                     location: location,
                     followers: followers,
                     following: following)
    }
}
