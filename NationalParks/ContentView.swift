//
//  ContentView.swift
//  NationalParks
//
//  Created by Jonathan Clark on 6/27/20.
//  Copyright © 2020 Jonathan Clark. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            if #available(iOS 14.0, *) {
                MapView()
                    .frame(height: 300)
                    .ignoresSafeArea(edges: .top)
            } else {
                // Fallback on earlier versions
            }
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                    .foregroundColor(.black)
                
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                if #available(iOS 14.0, *) {
                    Text("About Turtle Rock")
                        .font(.title2)
                } else {
                    // Fallback on earlier versions
                }

                Text("Descriptive text goes here.")
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
