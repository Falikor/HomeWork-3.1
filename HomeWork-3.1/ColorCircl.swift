//
//  ColorCircl.swift
//  HomeWork-3.1
//
//  Created by 17760021 on 27.07.2021.
//

import SwiftUI

struct ColorCircl: View {
    let on: Double
    let off: Double
    
    var body: some View {
        VStack {
            Circle()
                .foregroundColor(.red)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .center)
                .opacity(on)
                .overlay(Circle().stroke(Color.white, lineWidth: 4)).shadow(radius: 10)
            Circle()
                .foregroundColor(.yellow)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .opacity(on)
                .overlay(Circle().stroke(Color.white, lineWidth: 4)).shadow(radius: 10)
            Circle()
                .foregroundColor(.green)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .opacity(on)
                .overlay(Circle().stroke(Color.white, lineWidth: 4)).shadow(radius: 10)
        }
    }
}

struct ColorCircl_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircl(on: 1.0, off: 0.2)
    }
}
