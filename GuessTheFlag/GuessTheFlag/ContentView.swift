//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Syimyk on 23/4/26.
//

import SwiftUI

struct ContentView: View {
    @State private var showingScore = false
    @State private var showingFinalScore = false
    @State private var scoreTitle = ""
    @State private var alertMessage: String = ""
    @State private var score = 0
    @State private var numberOfQuestions: Int = 7
    
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Spain", "UK", "Ukraine", "US"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    
    var body: some View {
        ZStack {
            RadialGradient(stops: [
                .init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.3),
                .init(color: Color(red: 0.76, green: 0.15, blue: 0.26), location: 0.3),
            ], center: .top, startRadius: 200, endRadius: 400)
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                Text("Guess the Flag")
                    .font(.largeTitle.weight(.bold))
                    .foregroundStyle(.white)
                Spacer()
                Spacer()
                Text("Score: \(score)")
                    .foregroundStyle(.white)
                    .font(.title.bold())
                Spacer()
                VStack(spacing: 15) {
                    VStack {
                        Text("Tap the flag of")
                            .font(.subheadline.weight(.heavy))
                        Text(countries[correctAnswer])
                            .foregroundStyle(.secondary)
                            .font(.largeTitle.weight(.semibold))
                    }

                    ForEach(0..<3) { number in
                        FlagImage(number: number,
                                      buttonAction: flagTapped(_:),
                                      image: Image(countries[number])
                        )
                        
//                        Button {
//                            flagTapped(number)
//                        } label: {
//                            Image(countries[number])
//                        }
//                        .clipShape(.capsule)
//                        .shadow(radius: 5)
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(.regularMaterial)
                .clipShape(.rect(cornerRadius: 20))
            }
            .padding()
        }
        .alert(scoreTitle, isPresented: $showingScore) {
            Button("Continue", action: askQuestionOrEndRound)
        } message: {
            Text(alertMessage)
        }
        .alert("Your final score is \(score)", isPresented: $showingFinalScore) {
            Button("Play again", action: startNewRound)
        }
    }
    
    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            score += 1
            scoreTitle = "Correct!"
            alertMessage = "Your score is \(score)"
        } else {
            if score > 0 {
                score -= 1
            }
            scoreTitle = "Wrong!"
            alertMessage = "Thats the flag of the \(countries[number]). Your score is \(score)"
        }

        showingScore = true
    }
    
    func askQuestionOrEndRound() {
        guard numberOfQuestions > 0 else {
            showingFinalScore = true
            return
        }
        numberOfQuestions -= 1
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
    
    func startNewRound() {
        numberOfQuestions = 7
        score = 0
        askQuestionOrEndRound()
    }
}

#Preview {
    ContentView()
}





