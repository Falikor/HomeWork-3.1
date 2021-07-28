//
//  ColorCirclRed.swift
//  HomeWork-3.1
//
//  Created by 17760021 on 27.07.2021.
//

import SwiftUI

struct ColorCirclRed: View {
    var light: Double
    var body: some View {
            Circle()
                .foregroundColor(.red)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .center)
                .opacity(light)
                .overlay(Circle().stroke(Color.white, lineWidth: 4)).shadow(radius: 10)
    }
}

struct ColorCirclRed_Previews: PreviewProvider {
    static var previews: some View {
        ColorCirclRed(light: 0.2)
    }
}
