//
//  SlideIndicatorView.swift
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

struct SlideIndicatorView:View {
    var sideLabels = ("High","Normal","Low")
    var topLabel:String = "Title"
    var bottomLabel:String = "Measure"
    var value:Double
    init(sideLabels:(String,String,String),topLabel:String,bottomLabel:String,value:Double){
        self.sideLabels = sideLabels
        self.topLabel = topLabel
        self.bottomLabel = bottomLabel
        self.value = value
        
    }
    
    func warningColor()->Color{
        self.value > 0.8 ? .red : (self.value > 0.75 ? .yellow : (self.value > 0.6 ? .green : self.value > 0.3 ? .yellow : .red ))
    }
    var body: some View{
        VStack{
            Text(topLabel)
            HStack{
                VStack(alignment:.trailing){
                    Text(sideLabels.0)
                    Spacer()
                    Text(sideLabels.1)
                    Spacer()
                    Text(sideLabels.2)
                }
// Add in 10_03
                GeometryReader{ geometery in
                    VStack{
                        Spacer()
                        RoundedRectangle(cornerRadius: 20)
                            .frame(height:geometery.size.height * CGFloat(self.value) )
                            .foregroundColor(.gold)
                    }//Vstack
                }// geo reader
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.green, lineWidth: 2)
                )
            }//Hstack
            Text("\(value) " + bottomLabel)
        } //VStack
    } // body
}

struct SlideIndicatorView_Previews: PreviewProvider {
    static var previews: some View {
        SlideIndicatorView(sideLabels: ("High","50%","0%"), topLabel: "Title",bottomLabel:"ppm", value:0.5)
    }
}
