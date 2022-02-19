//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
    let stories = [ Story(storyT: "You see a fork in the road.", C1: "Take a left.", C1R: 1, C2: "Take a right.", C2R: 2),
                    Story(storyT: "You see a tiger.", C1: "Shout for help.", C1R: 1, C2: "Play dead.", C2R: 1),
                    Story(storyT: "You find a treasure chest.", C1: "Open it", C1R: 2, C2: "Check for trap.", C2R: 2)]
    
    var storyProgress = 0
    
    mutating func nextStory(_ userchoice: String)
    {
        if(stories[storyProgress].choice1 == userchoice)
        {
            storyProgress = stories[storyProgress].choice1Route
        }
        else
        {
            storyProgress = stories[storyProgress].choice2Route
        }
    }
    
    func getText() -> String
    {
        return stories[storyProgress].storyTitle
    }
    
    func getChoice1() -> String
    {
        return stories[storyProgress].choice1
    }
    
    func getChoice2() -> String
    {
        return stories[storyProgress].choice2
    }
}
