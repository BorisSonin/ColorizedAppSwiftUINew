//
//  ContentView.swift
//  ColorizedAppSwiftUINew
//
//  Created by Борис Сонин on 14.01.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var redSlider = Double.random(in: 0...255)
    @State private var greenSlider = Double.random(in: 0...255)
    @State private var blueSlider = Double.random(in: 0...255)
    
    var body: some View {
        ZStack {
            Color(.blue)
                . ignoresSafeArea()
            ColorView(red: redSlider, green: greenSlider, blue: blueSlider)
                .padding(.top, -350)
            VStack {
                SlidersView(value: $redSlider, sliderColor: .red)
                SlidersView(value: $greenSlider, sliderColor: .green)
                SlidersView(value: $blueSlider, sliderColor: .blue)
            }
            .padding(-150)
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
