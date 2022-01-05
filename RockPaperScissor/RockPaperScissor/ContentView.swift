//
//  ContentView.swift
//  RockPaperScissor
//
//  Created by Ali Raza on 04/01/2022.
//

import SwiftUI

struct ContentView: View {
//    var body: some View {
//        NavigationLink (destination: GameView()){
//            Text("Start")
//                .font(.headline)
//        }
//    }
    @State private var options = [["rock","paper","scissors"],
                                  ["👊🏻"  ,"✋🏻"   ,"✌🏻"]]
    @State private var wins = [1,2,0]
    @State private var notWin = [2,0,1]
    @State private var computersOption = 0
    @State private var toWin = Bool.random()
    @State private var usersOption = 0
    @State private var userScore = 0
    @State private var computerScore = 0
    @State private var draws = 0
    let rounds = 10
    var body: some View {
        NavigationView {
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
                        Text("User's Score")
                            .font(.headline)
                        Text(String(userScore))
                            .font(.caption)
                    }
                    Spacer()
                }
                Spacer()
                Text("Computer Option")
                    .font(.headline)
                Text(options[1][computersOption])
                    .font(.system(size:100))
                Text(options[0][computersOption])
                        .textCase(.uppercase)
                Spacer()
                HStack {
                    ForEach(0..<3){ i in
                        VStack {
                            Button(options[1][i]) {
                                usersOption = i
                                computersOption = Int.random(in: 0..<3)
                                print(usersOption, " ", computersOption)
//                                if toWin && usersOption == wins[usersOption] {
//                                    userScore += 1
//                                }
//                                else if !toWin && usersOption == notWin[usersOption] {
//                                    userScore += 1
//                                }
//                                else if toWin && usersOption != wins[usersOption] {
//                                    computerScore += 1
//                                }
//                                else if !toWin && usersOption != notWin[usersOption] {
//                                    computerScore += 1
//                                }
                                if usersOption == (computerScore+1)%3{
                                    
                                }
                                else {
                                    draws += 1
                                }
                            }
                            .font(.system(size:100))
                            Text(options[0][i])
                                .textCase(.uppercase)
                        }
                    }
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
