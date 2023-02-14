//
//  CustomColorPickerView.swift
//  DemoColorPicker20230213
//
//  Created by Xavier on 2/13/23.
//

import SwiftUI

struct CustomColorPickerView: View {
    @State private var selectedColor: Color = .indigo
    private let colors: [Color] = [
        .red,
        .brown,
        .orange,
        .yellow,
        .green,
        .mint,
        .teal,
        .cyan,
        .blue,
        .purple,
        .indigo
    ]
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(selectedColor)
            Text("Hello, world!")
                .foregroundColor(selectedColor)
                .padding(.horizontal, 50)
            // CustomColorPicker
            ScrollView(.horizontal) {
                HStack(alignment: .top) {
                    ForEach(colors, id: \.self) { color in
                        VStack {
                            Rectangle()
                                .frame(width: 30, height: 30)
                                .foregroundColor(color)
                            if color == selectedColor {
                                Circle()
                                    .frame(width: 5, height: 5)
                                    .foregroundColor(color)
                            }
                        }
                        .onTapGesture {
                            selectedColor = color
                        }
                        
                    }
                }
            }
            Spacer()
        }
        .padding()
    }
}

struct CustomColorPickerView_Previews: PreviewProvider {
    static var previews: some View {
        CustomColorPickerView()
    }
}
