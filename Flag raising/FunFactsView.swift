//
//  FunFactsView.swift
//  Flag raising
//
//  Created by Sarah Si Hui Tan on 9/5/24.
//

import SwiftUI

struct FunFactsView: View {
    
    @State private var showSheet = false
    @State private var items = [
        "Garden city",
        "Food paradise"
    ]
    @State private var newFact = ""
    
    var body: some View {
        NavigationView {
            List(items, id: \.self) { item in
                NavigationLink(destination: Text("This is a subview")) {
                    Text(item) //so it shows up on the list cuz this has an additional navigation view
                }
            }
            .navigationTitle("Fun Facts") //big title at the top
            
            .toolbar {
                Button {
                    showSheet = true
                    //If you press the button -> sheet is true -> sheet is presented
                    
                } label: { //for image button
                    Image(systemName: "square.and.pencil")
                }
            }
            .sheet(isPresented: $showSheet) {
                VStack {
                    TextField("Enter New Item", text: $newFact)
                    Button("Save") {
                        items.append(newFact)
                        showSheet = false // Dismiss the sheet after adding the new fact
                        newFact = "" // Clear the text field
                        
                    //presentationDetens : adjust the size of your sheet
                    }
                    .padding()
                }
            }
        }
    }
}

struct FunFactsView_Previews: PreviewProvider {
    static var previews: some View {
        FunFactsView()
    }
}
