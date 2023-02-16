//
//  ContentView.swift
//  SimpleNavigation
//
//  Created by Alun King on 16/02/2023.
//

import SwiftUI

struct ContentView: View {
    @State var enabled=false
    var body: some View {
        NavigationView{
            
            NavigationLink (
                isActive:$enabled,
                destination:{
                    SubView()
                },
                label:{
                    Text("Go to child view")
                }
            )
            
            
            .navigationTitle("Home")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
