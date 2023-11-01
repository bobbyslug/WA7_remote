//
//  Note.swift
//  WA7_He_8274
//
//  Created by Christopher on 11/1/23.
//

import Foundation

struct Note: Codable{
    var userId:String
    var text:String
    var _id:String
    var __v:Int
    
    init(userId: String, text: String, _id: String, __v: Int) {
        self.userId = userId
        self.text = text
        self._id = _id
        self.__v = __v
    }
}
