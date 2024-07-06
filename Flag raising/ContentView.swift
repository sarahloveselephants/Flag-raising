//
//  ContentView.swift
//  Flag raising
//
//  Created by Sarah Si Hui Tan on 9/5/24.


import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            FlagRaisingView() //summoning the view in FlagRaising
                .tabItem{
                    Label("Flag Raising", systemImage: "flag.fill")
                }
            
           FunFactsView()
                .tabItem{
                    Label("Fun Facts", systemImage: "heart")
                }
        }
        
        
    
    }
}

#Preview {
    ContentView()
}
