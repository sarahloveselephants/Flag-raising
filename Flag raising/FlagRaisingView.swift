//
//  FlagRaisingView.swift
//  Flag raising
//
//  Created by Sarah Si Hui Tan on 9/5/24.
//

import SwiftUI

struct FlagRaisingView: View {
    
    @State private var counter = 0.0

    var body: some View {
        VStack {
               Text("\(counter)")
            
            HStack(alignment: .bottom, spacing: -10) {
                    Rectangle()
                        .frame(width: 10)
                    Text("🇸🇬")
                       .font(.system(size: 100))
                       .offset(y: counter * -40) //in swift , origin in left corner
                      // .rotationEffect(.degrees(counter * 10)) -> flag will turn right
                   
                }
                Button {
                    withAnimation{
                        counter += 1
                    }
                } label: {
                    Text("Raise flag")
                }
                Button {
                    withAnimation{
                        counter = 0
                }
                } label : {
                    Text("Reset")
                }
            
            if counter == 30 {
                Text("YAY")
                    .font(.largeTitle)
            }
            }
            .padding()
    }
}

#Preview {
    FlagRaisingView()
}
