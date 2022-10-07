//
//  ContentView.swift
//  UITest
//
//  Created by Chowdhury Md Rajib  Sarwar on 7/10/22.
//

import SwiftUI

struct ContentView: View {
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
                    Image("card3")
                    Spacer()
                    Image("card4")
                    Spacer()
                }
                Spacer()
                Image("dealbutton")
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .padding(.bottom, 10)
                        Text("0")
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
                        
                        Text("0")
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
