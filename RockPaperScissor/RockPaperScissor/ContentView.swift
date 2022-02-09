//
//  ContentView.swift
//  RockPaperScissor
//
//  Created by Ali Raza on 04/01/2022.
//

import SwiftUI

struct ContentView: View {
        
    @State private var options = [["rock","paper","scissors"],
                                  ["👊🏻"  ,"✋🏻"   ,"✌🏻"]]
    @State private var wins = [1,2,0]
    @State private var loses = [2,0,1]
    @State private var computersOption = 0
    @State private var toWin = Bool.random()
    @State private var usersOption = 0
    @State private var userScore = 0
    @State private var computerScore = 0
    @State private var draws = 0
    let rounds = 10
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                VStack {
                    Text("User's Score")
                        .font(.headline)
                    Text(String(userScore))
                        .font(.caption)
                }
                Spacer()
                VStack {
                    Text("Draws")
                        .font(.headline)
                    Text(String(draws))
                        .font(.caption)
                }
                Spacer()
                VStack {
                    Text("Computere's Score")
                        .font(.headline)
                    Text(String(computerScore))
                        .font(.caption)
                }
                Spacer()
            }
            Spacer()
            Spacer()
            // Showing Options
            HStack{
                Spacer()
                VStack {
                    Text("User's Option")
                        .font(.headline)
                    Text(options[1][usersOption])
                        .font(.system(size:100))
                        .transition(.scale)
                    Text(options[0][usersOption])
                            .textCase(.uppercase)
                }
                Spacer()
                VStack {
                    Text("Computer Option")
                        .font(.headline)
                    Text(options[1][computersOption])
                        .font(.system(size:100))
                        .transition(.scale)
                    Text(options[0][computersOption])
                            .textCase(.uppercase)
                }
                Spacer()
            }
    
            Spacer()
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                    .fill(Color.secondary)
                    .frame(width: 300, height: 200, alignment: .center)
                    .padding()
                VStack {
                    Text("Choose your MOVE")
                    HStack {
                        ForEach(0..<3){ i in
                            VStack {
                                Button(options[1][i]) {
                                    usersOption = i
                                    withAnimation {
                                        computersOption = Int.random(in: 0..<3)
                                    }
                                    if usersOption == computersOption{
                                        // print("Both players selected ", userScore, ". It's a tie!")
                                        draws += 1
                                    }
                                    else if usersOption == 0 {
                                        if computersOption == 2 {
    //                                        print("Rock smashes scissors! You win!")
                                            userScore += 1
                                        } else {
    //                                        print("Paper covers rock! You lose.")
                                            computerScore += 1
                                        }
                                    }
                                    else if usersOption == 1 {
                                        if computersOption == 0 {
    //                                        print("Paper covers rock! You win!")
                                            userScore += 1
                                        } else {
    //                                        print("Scissors cuts paper! You lose.")
                                            computerScore += 1
                                        }
                                    }
                                    else if usersOption == 2 {
                                        if computersOption == 1 {
    //                                        print("Scissors cuts paper! You win!")
                                            userScore += 1
                                        } else {
    //                                        print("Rock smashes scissors! You lose.")
                                            computerScore += 1
                                        }
                                    }
                                }
                                .padding()
                                .font(.system(size:50))
                                Text(options[0][i])
                                    .textCase(.uppercase)
                            }
                        }
                    }
                }
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
