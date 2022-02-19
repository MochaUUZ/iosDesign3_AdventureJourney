//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct Story {
    let storyTitle: String
    let choice1: String
    let choice2: String
    let choice1Route: Int
    let choice2Route: Int
    
    init(storyT: String, C1: String, C1R: Int, C2: String, C2R: Int)
    {
        storyTitle = storyT
        choice1 = C1
        choice1Route = C1R
        choice2 = C2
        choice2Route = C2R
    }
}
