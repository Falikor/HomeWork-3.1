//
//  ColorCirclYellow.swift
//  HomeWork-3.1
//
//  Created by 17760021 on 27.07.2021.
//

import SwiftUI

struct ColorCirclYellow: View {
    var light: Double
    var body: some View {
        Circle()
            .foregroundColor(.yellow)
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .opacity(light)
            .overlay(Circle().stroke(Color.white, lineWidth: 4)).shadow(radius: 10)
    }
}

struct ColorCirclYellow_Previews: PreviewProvider {
    static var previews: some View {
        ColorCirclYellow(light: 0.2)
    }
}
