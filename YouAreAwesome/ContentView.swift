//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Gary Erickson on 3/26/25.
//

import SwiftUI
import AVFAudio

struct ContentView: View {
    @State private var message = ""
    @State private var imageName = ""
    @State private var imageNumber = 1
    @State private var lastMessageNumber = 1
    @State private var lastImageNumber = 1
    //@State private var soundNumber = -1
    @State private var lastSoundNumber = -1
    @State private var messageNumber = 1
    let numberOfImages = 10
    let numberOfSounds = 6
    @State private var audioPlayer: AVAudioPlayer!
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
            Spacer()
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
                //                repeat   {
                //                    imageNumber = Int.random(in: 0...(numberOfImages-1))
                //
                //                    imageName = "image\(imageNumber)"
                //
                //                } while lastImageNumber == imageNumber
                
                lastImageNumber = nonRepeatingRandom(lastNumber: lastImageNumber, upperBounds: numberOfImages-1)
                imageName = "image\(lastImageNumber)"
                
                lastMessageNumber = nonRepeatingRandom(lastNumber: lastMessageNumber, upperBounds: messageArray.count-1)
                message = messageArray[lastMessageNumber]
                
                lastSoundNumber = nonRepeatingRandom(lastNumber: lastSoundNumber, upperBounds: numberOfSounds-1)
                let soundName = "sound\(lastSoundNumber)"
                playSound(soundName: soundName)
            }
            
            
            .buttonStyle(.borderedProminent)
            .font(.title2)
            .tint(.blue)
        }
        
        .padding()
        
    }
    func playSound(soundName: String) {
        guard let soundFile = NSDataAsset(name: soundName) else {
            print("😡 Could not read file named \(soundName)")
            return
        }
        do {
            audioPlayer = try AVAudioPlayer(data: soundFile.data)
            audioPlayer?.play()
        } catch {
            print("😡 ERROR: \(error.localizedDescription) creating audioPlayer")
        }
    }
    func nonRepeatingRandom (lastNumber: Int, upperBounds: Int) -> Int {
        var nextNumber: Int
        repeat {
            nextNumber = Int.random(in: 0...upperBounds)
        } while nextNumber == lastNumber
        
        return nextNumber
        
    }
}

#Preview {
    ContentView()
}
