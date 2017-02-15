//
//  Service.swift
//  TwitterLBTA
//
//  Created by Jeff Kral on 2/13/17.
//  Copyright © 2017 Jeff Kral. All rights reserved.
//

import Foundation
import TRON
import SwiftyJSON

struct Service {
    
    let tron = TRON(baseURL: "https://api.letsbuildthatapp.com")
    
    static let sharedInstance = Service()
    
    func fetchHomeFeed(completion: @escaping (HomeDatasource) -> ()) {
        print("fetching home feed")
        
        let request: APIRequest<HomeDatasource, JSONError> = tron.request("/twitter/home")
        
        request.perform(withSuccess: { (homeDatasource) in
            
            print("great success")
            completion(homeDatasource)
            
        }) { (err) in
            print("failed to fetch", err)
        }
        
    }
    
    class JSONError: JSONDecodable {
        
        required init(json: JSON) {
            print("json error")
        }
    }
    
}
