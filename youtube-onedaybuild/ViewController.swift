//
//  ViewController.swift
//  youtube-onedaybuild
//
//  Created by Simileoluwa Aluko on 21/08/2020.
//  Copyright © 2020 Simileoluwa Aluko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var model = Model()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        model.getVideos()
    }


}

