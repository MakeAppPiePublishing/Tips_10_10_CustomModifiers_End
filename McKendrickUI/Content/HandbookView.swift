//
//  HandbookView.swift
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

struct HandbookView: View {
    var isSelected:Bool = false
    init(){
        self.isSelected = true
    }
    init(isSelected:Bool){
        self.isSelected = isSelected
    }
    func isCompact(_ geometry:GeometryProxy)->Bool{  //a faked compact size class
        geometry.size.width < 412
    }
    var body: some View {
        GeometryReader{ geometry in
        VStack{
            ContentHeaderView(headerTitle: "Spacer Handbook", headerSubtitle: "With Federated Freight Amendations and Standing Orders of SC Lois McKendrick ")
                .frame(height:geometry.size.height * 0.1 )
            
            Text("Spacer's Handbook")
                .font(self.isCompact(geometry) ? .headline : .largeTitle)
                .fontWeight(.heavy)
                .padding(.bottom,40)
            Text("Rules, Regulations, and Guidance for Spacers")
                .font(self.isCompact(geometry) ? .headline : .title)
            Text("Confederated Planets Joint Committee on Trade")
                 .font(self.isCompact(geometry) ? .headline : .title)
            Text("Current Edition: 2352")
                .font(.headline)
            Spacer()
            Text("SC Lois McKendrick, Federated Freight")
            Spacer()
        }//Vstack root
            .selectedTransition(isSelected: self.isSelected, geometry: geometry)
        }
    }
}

struct HandbookView_Previews: PreviewProvider {
    static var previews: some View {
        HandbookView(isSelected: true)
    }
}
