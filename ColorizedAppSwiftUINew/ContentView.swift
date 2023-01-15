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
    
    @FocusState var isInputActive: Bool
    
    let backgroundColor = Color(#colorLiteral(red: 0.5068743229, green: 0.3278231025, blue: 0.3188583851, alpha: 1))
    
    var body: some View {
        ZStack {
            backgroundColor
                . ignoresSafeArea()
                .onTapGesture {
                    isInputActive = false
                }
            ColorView(red: redSlider, green: greenSlider, blue: blueSlider)
                .padding(.top, -350)
            VStack {
                SlidersView(value: $redSlider, sliderColor: .red)
                SlidersView(value: $greenSlider, sliderColor: .green)
                SlidersView(value: $blueSlider, sliderColor: .blue)
            }
            .padding(-150)
        }
        .focused($isInputActive)
        .toolbar {
            ToolbarItemGroup(placement: .keyboard) {
                Spacer()
                Button("Done") {
                    isInputActive = false
                }
            }
        }
        Spacer()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

