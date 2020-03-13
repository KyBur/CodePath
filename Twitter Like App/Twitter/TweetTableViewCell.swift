//
//  TweetTableViewCell.swift
//  Twitter
//
//  Created by Kyle Burns on 3/4/20.
//  Copyright © 2020 Dan. All rights reserved.
//

import UIKit

class TweetTableViewCell: UITableViewCell {

    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var tweetTextLabel: UILabel!
    @IBOutlet weak var likeBtn: UIButton!
    @IBOutlet weak var retweetBtn: UIButton!
    
    var liked:Bool = false
    var tweetId: Int = -1
    var retweeted:Bool = false
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setLikes(_ isLiked:Bool){
        liked = isLiked
        if (liked){
            likeBtn.setImage(UIImage(named:"favor-icon-red"), for: UIControl.State.normal)
        }
        else{
            likeBtn.setImage(UIImage(named:"favor-icon"), for: UIControl.State.normal)
        }
    }
    func setRetweeted(_ isRetweeted:Bool){
        retweeted = isRetweeted
        if(isRetweeted){
            retweetBtn.setImage(UIImage(named: "retweet-icon-green"), for: UIControl.State.normal)
        }
        else{
            retweetBtn.setImage(UIImage(named: "retweet-icon"), for: UIControl.State.normal)
        }
    }
    
    
    @IBAction func likeAction(_ sender: Any) {
        if(!liked){
            TwitterAPICaller.client?.likeTweet(tweetId: tweetId, success: {
                self.setLikes(true)
            }, failure: { (error) in
                print("could not like tweet")
            })
        }
        else{
            TwitterAPICaller.client?.unlikeTweet(tweetId: tweetId, success: {
                self.setLikes(false)
            }, failure: { (error) in
                print("could not unlike tweet")
            })
        }
    }
    @IBAction func retweetAction(_ sender: Any) {
        TwitterAPICaller.client?.retweet(tweetId: tweetId, success: {
            self.setRetweeted(true)
        }, failure: { (error) in
            "Could not retweet \(error)"
        })
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
