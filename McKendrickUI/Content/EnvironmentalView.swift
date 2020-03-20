//
//  EnvironmentalView.swift
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

struct EnvironmentalView: View {
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
            ContentHeaderView(headerTitle: "SC Lois McKendrick", headerSubtitle: "Environmental Watch Slave Mode")
                .frame(height:geometry.size.height * 0.1 )
            HeadlineView("Air Quality")
             .padding(.top, 10)
            HStack{
                SlideIndicatorView(sideLabels: ("100", "50", "0"), topLabel: "Nitrogen", bottomLabel: "%", value: 0.78)
                 SlideIndicatorView(sideLabels: ("100", "50", "0"), topLabel: "Oxygen", bottomLabel: "%", value: 0.21)
                 SlideIndicatorView(sideLabels: ("5000", "1250", "0"), topLabel: "Carbon Dioxide", bottomLabel: "ppm", value: 0.25)
                SlideIndicatorView(sideLabels: ("500", "250", "0"), topLabel: "Trace", bottomLabel: "AQI", value: 0.09)

            }
            .padding()
            HeadlineView("Water Quality")
                .padding(.top, 10)
            HStack{
                SlideIndicatorView(sideLabels: ("240", "50", "0"), topLabel: "Turbidity", bottomLabel: "NTU", value: 0.05)
                SlideIndicatorView(sideLabels: ("2000", "1000", "0"), topLabel: "TDS", bottomLabel: "uS/cm", value: 0.3)
                SlideIndicatorView(sideLabels: ("3.0", "1.5", "0"), topLabel: "Dissolved O2", bottomLabel: "ppm", value: 0.15)
                SlideIndicatorView(sideLabels: ("14", "7", "0"), topLabel: "Acid/Alk", bottomLabel: "ph", value: 0.59)
            }
            .padding()
            HStack{
                Text("ASIC Monitoring Active")
                    .padding()
                Spacer(minLength: 100)

            Text("VSI Test")
                    .foregroundColor(.gold)
                .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.gold, lineWidth: 2)
                )
                Text("VSI Map")
                Image(systemName: "chevron.right")
            }//Hstack
                .frame(height: geometry.size.height * 0.1)
             .font(geometry.size.width > 800 ? .body: .caption)
           Spacer()
           
            
        }//Vstack Root
            .selectedTransition(isSelected: self.isSelected, geometry: geometry)
        }//GeometryReader
        
    }
}

struct EnvironmentalView_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentalView(isSelected: true)
    }
}
