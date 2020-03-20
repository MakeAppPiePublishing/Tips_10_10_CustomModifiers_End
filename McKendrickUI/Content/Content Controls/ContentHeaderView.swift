//
//  SwiftUIView.swift
//  McKendrickUI
//
//  Created by Steven Lipton on 3/8/20.
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

struct ContentHeaderView: View {
    
    var headerTitle:String
    var headerSubtitle:String! = nil
    var body: some View {
        GeometryReader{ geometry in
        HStack {
            Spacer()
            VStack(alignment:.leading){
                Text(self.headerTitle)
                    .font(.headline)
                    .fontWeight(.heavy)
                Text(self.headerSubtitle ?? "")
                    .font(.subheadline)
            }//Vstack
            .padding()
        }//HStack
            .frame(width:geometry.size.width)
            .background(LinearGradient(gradient: Gradient(stops: [Gradient.Stop(color: .darkGreen, location: 0.0),Gradient.Stop(color: .gold, location: 0.10)]), startPoint: .leading, endPoint: .trailing))
            .foregroundColor(.darkGreen)
            .cornerRadius(10)
       }//geometryreader
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ContentHeaderView(headerTitle: "Title", headerSubtitle: "")
    }
}
