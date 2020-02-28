//
//  MovieDetailViewController.swift
//  Flix API
//
//  Created by Kyle Burns on 2/27/20.
//  Copyright © 2020 Kyle Burns. All rights reserved.
//

import UIKit
import AlamofireImage
class MovieDetailViewController: UIViewController {

    @IBOutlet weak var backDropView: UIImageView!
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var descTextView: UITextView!
    
    var movie: [String: Any]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        titleLbl.adjustsFontSizeToFitWidth = true
        titleLbl.text = movie["title"] as? String
        titleLbl.sizeToFit()
        
        descTextView.text = movie["overview"] as? String
        let baseUrl = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseUrl + posterPath)
        posterView.af_setImage(withURL: posterUrl!)
        
        let baseBackUrl = "https://image.tmdb.org/t/p/w780"
        let backdropPath = movie["backdrop_path"] as! String
        let backdroprUrl = URL(string: baseBackUrl + backdropPath)
        backDropView.af_setImage(withURL: backdroprUrl!)
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
