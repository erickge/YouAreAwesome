//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Gary Erickson on 3/26/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = "I Am A Programmer!"
    var body: some View {
        
        VStack {
            Image(systemName: "swift")
            
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
            Button("Click Me!") {
                message = "Awesome!"
            }
                
        }
        
        .padding()
        
    }
}

#Preview {
    ContentView()
}
