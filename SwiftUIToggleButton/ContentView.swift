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
    @State private var background: Bool = false
    @State private var circle: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Toggle(isOn: $background) {
                        Text("Background")
                    }
                }
                ZStack {

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
                                ZStack {
                                    if self.circle {
                                        Circle()
                                            .frame(width: 80, height: 80)
                                            .foregroundColor(self.background ? Color.purple.opacity(0.2) : Color.green.opacity(0.2) )
                                    }
                                    Text("Toggle")
                                        .foregroundColor(self.value ? Color.red : Color.orange)
                                        .bold()
                                }
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
                    }.background(self.background ? Color.green.opacity(0.2) : Color.purple.opacity(0.2))
                    .padding()
                }
                Form {
                    Toggle(isOn: $circle) {
                        Text("Circle")
                    }
                }
                Spacer()
            }
            .navigationBarTitle("Toggle")
        }
    }
}

