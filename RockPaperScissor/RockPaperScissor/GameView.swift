//
//  GameView.swift
//  RockPaperScissor
//
//  Created by Ali Raza on 05/01/2022.
//

import SwiftUI

struct GameView: View {
    @State private var options = [["rock","paper","scissors"],
                                  ["👊🏻"  ,"✋🏻"   ,"✌🏻"]]
    @State private var currOption = Int.random(in: 0..<3)
    @State private var toWin = Bool.random()
    let rounds = 10
    var body: some View {
        NavigationView {
            HStack {
                
                ForEach(0..<3){ i in
                    VStack {
                        Button(options[1][i]) {
                            print(options[0][i] + " is tapped.")
                        }.font(.system(size:100))
                        Text(options[0][i])
                            .textCase(.uppercase)
                    }
                }
            }
        }
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
