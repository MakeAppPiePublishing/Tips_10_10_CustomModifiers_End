//
//  ContentView.swift
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

import SwiftUI

let buttonTitles = ["Comms","Jackets","Spacer Handbook","Ship Functions","News" ]

struct ContentView: View {
    @State var index:Int = 0
    var body: some View {
        GeometryReader{ geometry in
        VStack{
            //TitleView(subtitle: "Functional")
            TitleView(subtitle: buttonTitles[self.index])
            .foregroundColor(.gold)
            .padding([.bottom],10)
            .padding(.top,40)
            HStack{
                ZStack{ //Content
                    
//Add in 10_09
                    CommsView(isSelected: self.index == 0)
                    JacketView(isSelected: self.index == 1)
                    HandbookView(isSelected: self.index == 2)
                    EnvironmentalView(isSelected: self.index == 3)
                    BusinessNewsView(isSelected: self.index == 4)

                    //Change from this commented one in 10_02
                    //BusinessNewsView()
                    //EnvironmentalView()
                } //Zstack
                    .frame(width:geometry.size.width * 0.75)
                    .foregroundColor(.gold)
                GeometryReader{ geometery in
                    VStack { //buttons
                        Spacer()
                        ButtonSelectionView(selectedIndex: self.$index, buttonTitles:buttonTitles)
                    .frame(height:geometery.size.height * (4/5) )
                }//vstack
                }//geometery
            }//Hstack
            Spacer()
            FootNoteView()
                .padding([.leading,.trailing], 10)
                .frame(height:geometry.size.height * 0.1)
        }
        .background(Color.darkGreen)
        
        
        }//Geometryreader

        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
