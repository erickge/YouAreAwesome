//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Gary Erickson on 3/26/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            Image(systemName: "swift")
            
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("I am an app developer!")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
                
        }
        
        .padding()
        
    }
}

#Preview {
    ContentView()
}
