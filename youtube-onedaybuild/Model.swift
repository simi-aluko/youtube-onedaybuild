//
//  Model.swift
//  youtube-onedaybuild
//
//  Created by Simileoluwa Aluko on 27/08/2020.
//  Copyright © 2020 Simileoluwa Aluko. All rights reserved.
//

import Foundation

class Model {
    
    func getVideos(){
        
        // Create a URL Object
        let url = URL(string: Constants.apiURL)
        
        guard url != nil else {
            return
        }
        
        // Get a URLSession object
        let session = URLSession.shared
        
        // Get a data task from the URLSession object
        let dataTask = session.dataTask(with: url!) { (data, response, error) in
            if(error != nil || data == nil){
                return
            }
        }
        // Kick off the task
        dataTask.resume()
    }
}
