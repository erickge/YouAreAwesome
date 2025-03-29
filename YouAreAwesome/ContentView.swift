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
    @State private var imageNumber = 0
    
    @State private var messageNumber = 0
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
                
                imageName = "image\(imageNumber)"
                imageNumber = (imageNumber == 9 ? 0 : imageNumber + 1)
                
                message = messageArray[messageNumber]
                
                messageNumber = (messageNumber == messageArray.count - 1 ? 0 : messageNumber + 1)
                //print (messageNumber)
                
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
