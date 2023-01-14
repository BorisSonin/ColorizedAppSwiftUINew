//
//  ColorView.swift
//  ColorizedAppSwiftUINew
//
//  Created by Борис Сонин on 14.01.2023.
//

import SwiftUI

struct ColorView: View {
    
    var red: Double
    var green: Double
    var blue: Double
    
    var body: some View {
        RoundedRectangle(cornerRadius: 15)
            .frame(width: 300, height: 150)
            .foregroundColor(Color(red: red / 255, green: green / 255, blue: blue / 255))
            .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.green, lineWidth: 4))
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color(.gray)
            ColorView(red: 255, green: 100, blue: 100)
        }
    }
}
