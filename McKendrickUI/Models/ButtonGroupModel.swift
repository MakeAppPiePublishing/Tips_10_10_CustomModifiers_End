//
//  File.swift
//  McKendrickUI
//
//  Created by Steven Lipton on 3/6/20.
//  Copyright © 2020 Steven Lipton. All rights reserved.
//
// An exercise file for iOS Development Tips Weekly
// A weekely course on LinkedIn Learning for iOS developers
//  Season 10 (Q2 2020) video 10
//  by Steven Lipton (C)2020, All rights reserved
// Learn more at https://linkedin-learning.pxf.io/YxZgj
// This Week:  Create custom modifiers in SwiftUI while making the button panel a navigation panel.
//  For more code, go to http://bit.ly/AppPieGithub

// Quarter Share, Ishmael Wang, Lois McKendrick, and
// Trader Tales from the Golden Age of the  Solar Clipper
// copyright Nathan Lowell, used with permission
// To read the novel behind this project, see https://www.amazon.com/Quarter-Share-Traders-Golden-Clipper-ebook/dp/B00AMO7VM4

import Foundation

struct ButtonGroupItem:Identifiable{
    var id:String
    var isSelected:Bool = false
}

class ButtonGroupModel{
    var buttons:[ButtonGroupItem]
    init(titles:[String]){
        buttons = []
        for title in titles{
            buttons += [ButtonGroupItem(id: title, isSelected: false)]
        }
    }//init
    func clearSelection(){
        for index in 0..<buttons.count{
            buttons[index].isSelected = false
        }
    }
}

