//
//  CacheManager.swift
//  youtube-onedaybuild
//
//  Created by Simileoluwa Aluko on 30/08/2020.
//  Copyright © 2020 Simileoluwa Aluko. All rights reserved.
//

import Foundation

class CacheManager {
    
    static var cache = [String : Data]()
    
    static func setVideoCache(_ url : String, _ data:Data?){
        cache[url] = data
    }
    
    static func getVideoCache(_ url : String) -> Data? {
        return cache[url]
    }
}
