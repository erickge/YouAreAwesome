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
    @State private var imageNumber = 1
    @State private var lastMessageNumber = 1
    @State private var lastImageNumber = 1
    
    @State private var messageNumber = 1
    var body: some View {
        
        VStack {
            //Spacer()
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
                .multilineTextAlignment(.center)
                .minimumScaleFactor(0.5)
                .frame(height:130 )
                .animation(.easeInOut(duration: 0.15), value: message)
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 30)
                .animation(.default, value: imageName)
            Spacer()
            Button("Show Message!") {
                let messageArray = ["You are Awesome!",
                                    "Gadzooks my friend! I am astonished at how utterly awesome you are!",
                                    "You are Great!",
                                    "Fabulous? That's You!",
                                    "Just like a real Programmer!",
                                    "This is a very long message, it should flow to 3 lines!"]
                while lastImageNumber == imageNumber {
                    imageNumber = Int.random(in: 0...9)
                    
                    imageName = "image\(imageNumber)"
                    
                }
                lastImageNumber = imageNumber
                while lastMessageNumber == messageNumber {
                    messageNumber = Int.random(in: 0..<messageArray.count)
                    message = messageArray[messageNumber]
                }
                lastMessageNumber = messageNumber
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
