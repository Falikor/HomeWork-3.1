//
//  ContentView.swift
//  HomeWork-3.1
//
//  Created by 17760021 on 27.07.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var onRed = 0.2
    @State private var onYellow = 0.2
    @State private var onGreen = 0.2
    @State private var  off = 1.0
    @State private var  on = 0.2
    @State private var firstTapp = false
    
    
    var body: some View {
        VStack {
            VStack {
                ColorCirclRed(light: onRed)
                ColorCirclYellow(light: onYellow)
                ColorCirclGreen(light: onGreen)
            }
                .padding(.vertical, 50)
            
            Button(action: {
                
                switch off {
                case onGreen:
                    onRed = off
                    onGreen = 0.2
                case onRed:
                    onYellow = off
                    onRed = 0.2
                case onYellow:
                    onGreen = off
                    onYellow = 0.2
                default:
                    onRed = off
                    firstTapp = true
                }
            }) {
                if firstTapp {
                    Text("Next")
                        .fontWeight(.bold)
                                .font(.title3)
                                .foregroundColor(.gray)
                                .padding()
                                .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(Color.gray, lineWidth: 5)
                                )
                    
                } else {
                    Text("Start")
                        .fontWeight(.bold)
                        .font(.title3)
                                .foregroundColor(.gray)
                                .padding()
                                .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(Color.gray, lineWidth: 5)
                                )
                }
                
            }

        }.padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
