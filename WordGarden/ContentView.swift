//
//  ContentView.swift
//  WordGarden
//
//  Created by Student2 on 3/27/25.
//

import SwiftUI

struct ContentView: View {
    @State private var wordsGuessed = 0
    @State private var wordsMissed = 0
    @State private var wordsToGuess = ["SWIFT", "DOG", "CAT"] // All Caps
    @State private var gameStatusMessage = "How Many Guesses to Uncover the Hidden Word?"
    @State private var currentWord = 0
    @State private var guessedLetter = ""
    @State private var imageName = "flower8"
    @State private var playAgainHidden = true
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading){
                    Text ("Words Guessed: \(wordsGuessed)")
                    Text ("Words Missed: \(wordsMissed)")
                }
                Spacer()
                VStack(alignment: .trailing){
                    Text ("Words to Guess: \(wordsToGuess.count - (wordsGuessed + wordsMissed))")
                    Text ("Words in Game: \(wordsToGuess.count)")
                }
            }
            .padding(.horizontal)
            
            Spacer()
            
            Text(gameStatusMessage)
                .font(.title)
                .multilineTextAlignment(.center)
                .padding()
            
            
            //TODO: Switch to wordsToGuess[CurrentWord]
            Text("_ _ _ _ _")
                .font(.title)
            
            if playAgainHidden{
                HStack{
                    TextField("", text: $guessedLetter)
                        .textFieldStyle(.roundedBorder)
                        .frame(width: 30)
                        .overlay {
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(.gray, lineWidth: 2)
                        }
                    
                    Button("Guess a Letter:") {
                        //TODO: Guess a Letter button action here
                        playAgainHidden = false
                    }
                    .buttonStyle(.bordered)
                    .tint(.mint)
                }
            } else {
                Button("Another Word?") {
                //TODO: Another Word Button Action Here
                    playAgainHidden = true
            }
            .buttonStyle(.borderedProminent)
            .tint(.mint)
                
            }
            

            
            Spacer()
            
            Image(imageName)
                .resizable()
                .scaledToFit()
        }
        .background(ignoresSafeAreaEdges: .bottom)
    }
}

#Preview {
    ContentView()
}
