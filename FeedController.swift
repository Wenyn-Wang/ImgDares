//
//  FeedController.swift
//  ImgDares
//
//  Created by Wenyn Wang on 3/24/16.
//  Copyright (c) 2016 Wenyn Wang. All rights reserved.
//

import UIKit

class FeedController: UITableViewController {
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        if let feed = Post.feed{
            return feed.count
        }else{
            return 0
        }
    }
    
    func postIndex(cellIndex: Int) -> Int{
        return tableView.numberOfSections()-cellIndex-1
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let post = Post.feed![postIndex(indexPath.section)]
        let cell = tableView.dequeueReusableCellWithIdentifier("PostCell") as! PostCell
        cell.captionLabel.text = post.caption
        cell.imgView.image = post.image
        
        return cell
    }
    //Creating Feed Controller 3:15
}
