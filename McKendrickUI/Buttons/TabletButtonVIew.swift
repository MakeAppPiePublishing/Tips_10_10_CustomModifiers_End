//
//  TabletButton.swift
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

struct TabletButtonView:View{
    var title:String
    //TODO: Uncomment this for 10_09
    var index:Int
    @Binding var selected:Int  //10_09
   
    init(title:String,index:Int,selected:Binding<Int>){
        self.title = title
        self.index = index
        self._selected = selected
    }
    
    func buttonAction(){
        selected = index //10_09
    }
   var isSelected:Bool{selected == index}
    var body: some View{
        GeometryReader{ geometry in
            Button(action:self.buttonAction){  //10_08 change to use action
                Text(self.title)
                    .foregroundColor(self.isSelected ? .darkGreen: .gold)
                    .font(geometry.size.width >= 200 ? .headline : .caption )
                    .padding(3)
            }//Button
                .frame(width:geometry.size.width, height:geometry.size.height ) //10_07
                .background(self.isSelected ? Color.gold : Color.clear) //10_08
                .cornerRadius(20)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.gold, lineWidth: 2)
                )//overlay
        }//geometryreader
    }//body
}


struct TabletButtonView_Previews: PreviewProvider {
    static var previews: some View {
        //TabletButtonView(title:"Send Coffee!")
        TabletButtonView(title:"Send Coffee", index: 1, selected: .constant(0))
    }
}
