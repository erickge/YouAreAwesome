//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Gary Erickson on 3/26/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var imageName = ""
    var body: some View {
        
        VStack {
            Spacer()
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 30)
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
            Spacer()
            Button("Press Me!") {
                let message1 = "You are Awesome!"
                let message2 = "You are Great!"
                let imageString1 = "image0"
                let imageString2 = "image1"
                @State var message3 = ""
                message = (message == message1 ? message2 : message1)
                imageName = (imageName == imageString1 ? imageString2 : imageString1)
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            .tint(.blue)
        }
        
        .padding()
        
    }
}

#Preview {
    ContentView()
}
