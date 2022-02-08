//
//  ContentView.swift
//  Animatic
//
//  Created by Domenico De Luca on 03/02/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ImplicitAnimation()
                .tabItem {
                    Label("Implicit", systemImage: "circle.dotted")
                }
            ExplicitAnimation()
                .tabItem {
                    Label("Explicit", systemImage: "slowmo")
                }
            Custom()
                .tabItem {
                    Label("Custom", systemImage: "timelapse")
                }
        }
        .accentColor(.indigo)
        .onAppear(){
            UITabBar.appearance().barTintColor = .white
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
