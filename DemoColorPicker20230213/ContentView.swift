//
//  ContentView.swift
//  DemoColorPicker20230213
//
//  Created by Xavier on 2/13/23.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedColor: Color = .indigo
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(selectedColor)
            Text("Hello, world!")
                .foregroundColor(selectedColor)
            //SwiftUIStandardColorPicker
            ColorPicker(selection: $selectedColor) {
                Text("Change color here: ")
            }
            .padding(.horizontal, 50)
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
