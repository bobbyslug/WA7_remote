//
//  UserNames.swift
//  WA7_He_8274
//
//  Created by Christopher on 11/1/23.
//

import Foundation

struct UserName: Codable{
    let name:String
}

struct UserNames: Codable{
    let contacts: [UserName]
}
