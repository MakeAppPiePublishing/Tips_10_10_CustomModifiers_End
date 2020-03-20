//
//  CommsView.swift
//  McKendrickUI
//
//  Created by Steven Lipton on 3/10/20.
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

import SwiftUI

struct CommsView: View {
    let commTitles = ["Ship Department Directory","Crew Directory","Tablet to Tablet","Ship Systems","Orbital Communications Link"]
    var isSelected:Bool = false
    init(){
        self.isSelected = true
    }
    init(isSelected:Bool){
        self.isSelected = isSelected
    }
    var body: some View {
        GeometryReader{ geometry in
        VStack{
            ContentHeaderView(headerTitle: "Communication Functions", headerSubtitle: "SC Lois McKendrick and Local comms operational")
            .frame(height:geometry.size.height * 0.1 )
            ForEach(self.commTitles,id:\.self){ item in
                HStack{
                    Text(item).padding()
                    Spacer()
                    Image(systemName: "chevron.right")
                }
            .padding()
            }
            
            Spacer()
        }//Vstack root
           .selectedTransition(isSelected: self.isSelected, geometry: geometry)
            
        }//GeometryReader
    }
}

struct CommsView_Previews: PreviewProvider {
    static var previews: some View {
        CommsView(isSelected: true)
    }
}
