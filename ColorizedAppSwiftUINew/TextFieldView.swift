//
//  TextFieldView.swift
//  ColorizedAppSwiftUINew
//
//  Created by Борис Сонин on 15.01.2023.
//

import SwiftUI


struct TextFieldView: View {
    
    
    @Binding var value: Double
    
    @State private var showAlert = false
    
    var body: some View {
        TextField("", value: $value, formatter: NumberFormatter(),
                  onCommit: {
            checkValue()
        }
        )
        .frame(width: 32, height: 3)
        .padding()
        .background(Color.white.cornerRadius(10))
        .foregroundColor(.black)
        .keyboardType(.decimalPad)
        .alert("Wrong format", isPresented: $showAlert, actions: {}) {
            Text("Please enter value from 0 to 255")
        }
    }
}

extension TextFieldView {
    
    private func checkValue() {
        if value > 255 || value < 0 {
            showAlert = true
            value = 0
            return
        }
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color(.gray)
            TextFieldView(value: .constant(100))
        }
    }
}

