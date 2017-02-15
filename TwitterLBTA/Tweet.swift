//
//  Tweet.swift
//  TwitterLBTA
//
//  Created by Jeff Kral on 2/8/17.
//  Copyright © 2017 Jeff Kral. All rights reserved.
//

import Foundation
import  SwiftyJSON

struct Tweet {
    let user: User
    let message: String
    
    init(json: JSON) {
        let userJson = json["user"]
        
        self.user = User(json: userJson)
        self.message = json["message"].stringValue
        
    }
}
