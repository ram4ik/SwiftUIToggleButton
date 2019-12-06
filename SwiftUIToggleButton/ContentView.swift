//
//  ContentView.swift
//  SwiftUIToggleButton
//
//  Created by Ramill Ibragimov on 06.12.2019.
//  Copyright © 2019 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var value: Bool = false
    var body: some View {
        VStack {
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(self.value ? Color.orange : Color.red)
                .cornerRadius(self.value ? 25 : 0)
                .shadow(radius: 15)
                .animation(Animation.easeInOut(duration: 0.5))
            HStack {
                Spacer()
                Rectangle()
                    .frame(width: 100, height: 100)
                    .foregroundColor(self.value ? Color.orange : Color.red)
                    .cornerRadius(self.value ? 25 : 0)
                    .shadow(radius: 15)
                    .animation(Animation.easeInOut(duration: 0.5))
                Spacer()
                Button(action: {
                    self.value.toggle()
                }) {
                    Text("Toggle")
                }.accessibility(identifier: "toggle")
                Spacer()
                Rectangle()
                    .frame(width: 100, height: 100)
                    .foregroundColor(self.value ? Color.orange : Color.red)
                    .cornerRadius(self.value ? 25 : 0)
                    .shadow(radius: 15)
                    .animation(Animation.easeInOut(duration: 0.5))
                Spacer()
            }
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(self.value ? Color.orange : Color.red)
                .cornerRadius(self.value ? 25 : 0)
                .shadow(radius: 15)
                .animation(Animation.easeInOut(duration: 0.5))
        }
    }
}

