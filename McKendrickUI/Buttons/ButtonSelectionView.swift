//
//  ButtonSelector.swift
//  McKendrickUI
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

struct ButtonSelectionView: View {
    @Binding var selectedIndex:Int
    var buttonTitles:[String]
    var body: some View {
        VStack{
            ForEach(0..<buttonTitles.count, id:\.self){ buttonIndex in
                //TabletButtonView(title: self.buttonTitles[buttonIndex])
                TabletButtonView(title:self.buttonTitles[buttonIndex],index:buttonIndex,selected:self.$selectedIndex) //Add in for 10_8
            }//foreach
        }//Vstack
    }
}

struct ButtonSelector_Previews: PreviewProvider {
    static var previews: some View {
        ButtonSelectionView(selectedIndex:.constant(1),buttonTitles:["Comms","Handbook","News","Handbook"])
    }
}
