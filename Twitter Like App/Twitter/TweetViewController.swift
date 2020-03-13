//
//  TweetViewController.swift
//  Twitter
//
//  Created by Kyle Burns on 3/12/20.
//  Copyright © 2020 Dan. All rights reserved.
//

import UIKit

class TweetViewController: UIViewController, UITextViewDelegate {

    @IBOutlet weak var tweetContent: UITextView!
    @IBOutlet weak var profileImg: UIImageView!
    @IBOutlet weak var tweetBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        tweetContent!.delegate = self
        tweetBtn.layer.cornerRadius = 10
        tweetContent.becomeFirstResponder()
        // Do any additional setup after loading the view.
    }
    @IBAction func cancelAction(_ sender: Any) {
        tweetContent.resignFirstResponder()
        self.dismiss(animated: true)
    }
    @IBAction func tweetAction(_ sender: Any) {
        if(!tweetContent.text.isEmpty){
            TwitterAPICaller.client?.postTweet(tweetString: tweetContent.text, success: {
                self.dismiss(animated: true, completion: nil)
            }, failure: { (error) in
                print("Could not post tweet \(error)")
            })
        }
    }
    func textViewDidChange(_ textView: UITextView) {
        if(textView.text.isEmpty){
            tweetBtn.isEnabled = false
            tweetBtn.alpha = 0.5
        }
        else if(!tweetBtn.isEnabled){
            print("not empty")
            tweetBtn.isEnabled = true
            tweetBtn.alpha = 1
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
