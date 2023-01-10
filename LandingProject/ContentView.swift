//
//  ContentView.swift
//  LandingProject
//
//  Created by Farhan Sadik on 10/1/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
        
            Color.blue
            
            VStack{
                Text("Homepage").font(.largeTitle).bold().foregroundColor(Color.white)
            }
        
        }
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
