//
//  Model.swift
//  iQuiz1
//
//  Created by Evan on 5/4/16.
//  Copyright © 2016 Evan. All rights reserved.
//

import Foundation

class Data {
    var titles : [String] = ["Gaming", "Math", "Science"]
    var descriptions : [String] = ["Questions about gaming, mainly League of Legends", "Questions about simple algebra", "Questions about all sciencey things"]
    
    var quizzes : [[String]] = []
    init() {
        for index in 0..<titles.count {
            quizzes.append([titles[index], descriptions[index]])
        }
    }
    
}