//
//  WeatherButton.swift
//  BeginLearning
//
//  Created by Rahul Patel on 2024-04-23.
//
import SwiftUI

struct WeatherChangeDayButton: View {
    var title:String
    var textColor:Color
    var backgroundColor:Color
   
    var body: some View {
        if #available(iOS 16.0, *) {
            Text(title)
                .frame(width: 200,height: 50)
                .background(backgroundColor.gradient)
                .foregroundColor(textColor)
                .font(.system(size: 20,weight: .bold))
                .cornerRadius(10.0)
        } else {
            Text(title)
                .frame(width: 200,height: 50)
                .background(backgroundColor)
                .foregroundColor(textColor)
                .font(.system(size: 20,weight: .bold))
                .cornerRadius(10.0)
        }
    }
}
