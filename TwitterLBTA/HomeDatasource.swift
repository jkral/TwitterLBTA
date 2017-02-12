//
//  HomeDatasource.swift
//  TwitterLBTA
//
//  Created by Jeff Kral on 1/10/17.
//  Copyright © 2017 Jeff Kral. All rights reserved.
//

import LBTAComponents


class HomeDatasource: Datasource {
    
    let users: [User] = {
        let jeffUser = User(name: "Jeff", username: "@usernameTest", bioText: "bioText test text asdf asd asdflkjlkjlsd ghstgw dfgdfgsfgewg rgergwerg ergergerg asdag afgadfgadfgafgafgadfgadfgdafg adfgdfgdafgsdfg dafggsdfgfdsdfgsfdgsd dfgsdgdfgsdfgsd adfgsdfgsdfgsdfgdfg sadfgsdfgdsfg sdfgdsfgsfg zz", profileImage: #imageLiteral(resourceName: "kralPhoto"))
        
        let rayUser = User(name: "Ray Wenderlich", username: "@rwenderlich", bioText: "We make iOS apps and other random things  asgergqerg3 egqergqergr aergqergqergr hwergergq", profileImage: #imageLiteral(resourceName: "rsz_1rsz_twitter_logo"))
        
        
        return [jeffUser, rayUser]
    }()
    
    let tweets: [Tweet] = {
        
        let jeffUser = User(name: "Jeff", username: "@usernameTest", bioText: "bioText test text asdf asd asdflkjlkjlsd ghstgw dfgdfgsfgewg rgergwerg ergergerg asdag afgadfgadfgafgafgadfgadfgdafg adfgdfgdafgsdfg dafggsdfgfdsdfgsfdgsd dfgsdgdfgsdfgsd adfgsdfgsdfgsdfgdfg sadfgsdfgdsfg sdfgdsfgsfg zz", profileImage: #imageLiteral(resourceName: "kralPhoto"))
        
        let tweet = Tweet(user: jeffUser, message: "This is supposed to be a really really long tweet in order to fill out the textview space. I think I might need to type some more though because I don't think it is long enough")
        
        let tweet2 = Tweet(user: jeffUser, message: "This is text for the second tweet message. I hope I can figure out something to say. How about hmmmmmmmmmm")
        
        return [tweet, tweet2]
    }()
    
    
    
    override func footerClasses() -> [DatasourceCell.Type]? {
        return [UserFooter.self]
    }
    
    override func headerClasses() -> [DatasourceCell.Type]? {
        return [UserHeader.self]
    }
    
    override func cellClasses() -> [DatasourceCell.Type] {
        return [UserCell.self, TweetCell.self]
    }
    
    override func item(_ indexPath: IndexPath) -> Any? {
        
        if indexPath.section == 1 {
            return tweets[indexPath.item]
        }
        return users[indexPath.item]
    }
    
    override func numberOfSections() -> Int {
        return 2
    }
    
    override func numberOfItems(_ section: Int) -> Int {
        if section == 1 {
            return tweets.count
        }
        return users.count
    }
}
