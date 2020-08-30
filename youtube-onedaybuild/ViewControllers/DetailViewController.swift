//
//  DetailViewController.swift
//  youtube-onedaybuild
//
//  Created by Simileoluwa Aluko on 30/08/2020.
//  Copyright © 2020 Simileoluwa Aluko. All rights reserved.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var textView: UITextView!
    var video : Video?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        titleLabel.text = ""
        dateLabel.text = ""
        textView.text = ""
        
        guard video != nil else {
            return
        }
        
        let embedURLString = Constants.youtubeEmbedURL + video!.videoId
        let url = URL(string: embedURLString)
        let request = URLRequest(url: url!)
        webView.load(request)
        
        titleLabel.text = video!.title
        
        let df = DateFormatter()
        df.dateFormat = "EEEE, MMM d, yyyy"
        dateLabel.text = df.string(from: video! .published)
        
        textView.text = video!.description  
        
    }
}
 
