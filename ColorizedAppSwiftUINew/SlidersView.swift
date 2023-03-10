//
//  SlidersView.swift
//  ColorizedAppSwiftUINew
//
//  Created by Борис Сонин on 14.01.2023.
//

import SwiftUI

struct SlidersView: View {
    
    @Binding var value: Double
    
    let sliderColor: Color
    
    var body: some View {
        HStack {
            Text("\(lround(value))")
                .foregroundColor(.white)
            
            Slider(value: $value, in: 0...255, step: 1)
                .accentColor(sliderColor)
            
            TextFieldView(value: $value)
        }
        .frame(width: 350)
    }
}

struct SlidersView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color(.gray)
            SlidersView(value: .constant(100), sliderColor: .red)
        }
    }
}

