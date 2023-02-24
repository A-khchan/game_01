//
//  ContentView.swift
//  game_01
//
//  Created by Albert Chan on 2/21/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var r: Double = 0
    @State private var g: Double = 1
    @State private var b: Double = 0
    
    
    var body: some View {
        VStack {
            LinearGradient(colors: [Color(red: r, green: g, blue: b),
                                         .blue],
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, there main!")
                .font(.system(size: 30))
            Button() {
                r = Double.random(in: 0...1)
                g = Double.random(in: 0...1)
                b = Double.random(in: 0...1)
                print("RGB are \(r), \(g), \(b)")
            } label: {
                Text("Button")
                    .frame(width: 200, height: 30)
                    .foregroundColor(Color(red: 1-r, green: 1-g, blue: 1-b))
                    .background(Color(red: r, green: g, blue: b))
                    .cornerRadius(9.0, antialiased: false)
                
            }
            Image(systemName: "sun.max.fill")
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .imageScale(.medium)
                .frame(width: 200, height: 200)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
