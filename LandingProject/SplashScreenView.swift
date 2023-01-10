//
//  SplashScreen.swift
//  LandingProject
//
//  Created by Farhan Sadik on 10/1/23.
//

import SwiftUI

struct SplashScreenView: View {
    
    @State private var isActive = false
    @State var size = 0.8
    @State var opacity = 0.5
    
    
    var body: some View {

        if isActive{
            ContentView()
        } else{
            
        
        
        ZStack{
            Color.orange
            VStack{
                Image(systemName: "fossil.shell.fill").resizable().frame(width: 75, height: 50).foregroundColor(Color.white)
                
                
                Text("Shimping").font(.system(size: 22)).bold().foregroundColor(Color.white)
                
            }
            .scaleEffect(size)
            .opacity(opacity)
            .onAppear{
                withAnimation(.easeIn(duration: 1.2)){
                    self.size = 0.9
                    self.opacity = 1.0
                }
            }
            
            
            
        }.ignoresSafeArea().onAppear{
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
                self.isActive = true
            }
        }
        }

    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
