//
//  ProfileController.swift
//  ImgDares
//
//  Created by Wenyn Wang on 3/24/16.
//  Copyright (c) 2016 Wenyn Wang. All rights reserved.
//

import UIKit

class ProfileController: UIViewController {
    @IBOutlet weak var profilePic:UIImageView!
    @IBOutlet weak var postsLabel:UILabel!
    @IBOutlet weak var followersLabel:UILabel!
    @IBOutlet weak var followingLabel:UILabel!
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        if let currentUser = Profile.currentUser{
            self.postsLabel.text = "\(currentUser.posts.count)" //"5" 5
            self.followersLabel.text = "\(currentUser.followers.count)"
            self.followingLabel.text = "\(currentUser.following.count)"
            if let profilePic = currentUser.picture {
                self.profilePic.image = profilePic
            }
        }else{
            print("No user is logged in")
        }
    }
    
    @IBAction func editProfile(sender: AnyObject){
        print("User wants to edit profile")
    }
    
}

