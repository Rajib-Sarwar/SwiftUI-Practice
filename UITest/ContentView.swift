//
//  ContentView.swift
//  UITest
//
//  Created by Chowdhury Md Rajib  Sarwar on 7/10/22.
//

import SwiftUI

struct ContentView: View {
    @State private var playerCard = "card2"
    @State private var cpuCard = "card3"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    @State private var isEnd = false
    @State private var isPlayerWon = false
    
    var body: some View {
        ZStack {
            Image("background")
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                Button {
                    //generate random number between 2 to 14
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    //update cards
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    //update score
                    if playerRand > cpuRand {
                        playerScore += 1
                    } else if cpuRand > playerRand {
                        cpuScore += 1
                    }
                    if(playerScore == 10) {
                        isPlayerWon = true
                        isEnd = true
                    }
                    if(cpuScore == 10) {
                        isPlayerWon = false
                        isEnd = true
                    }
                } label: {
                    Image("dealbutton")
                }.alert(isPresented: $isEnd) {
                    Alert(
                        title: Text("Congrats!"),
                        message: Text(isPlayerWon ? "Player" : "CPU"),
                        dismissButton: .default (
                            Text("Ok"),
                            action: {
                                playerCard = "card2"
                                cpuCard = "card3"
                                playerScore = 0
                                cpuScore = 0
                                isEnd = false
                            }
                        )
                    )
                }

                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .padding(.bottom, 10)
                        Text(String(playerScore))
                            .font(.headline)
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .padding(.bottom, 10)
                        
                        Text(String(cpuScore))
                            .font(.headline)
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                    }
                    Spacer()
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
