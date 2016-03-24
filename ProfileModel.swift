//
//  ProfileModel.swift
//  ImgDares
//
//  Created by Wenyn Wang on 3/24/16.
//  Copyright (c) 2016 Wenyn Wang. All rights reserved.
//

import UIKit

class Profile {
    let username:String
    var followers:Array<String>
    var following:Array<String>
    var posts:Array<Post>
    var picture:UIImage?
    static var currentUser:Profile?
    
    
    init(username:String, followers:Array<String>, following:Array<String>, posts:Array<Post>, picture:UIImage?){
        
        self.username = username
        self.followers = followers
        self.following = following
        self.posts = posts
        self.picture = picture
    }
    
    static func creatsUser(username:String) -> Profile{
        return Profile(username: username, followers: Array<String>(), following: [String](), posts: [Post](), picture: nil)
    }
}
