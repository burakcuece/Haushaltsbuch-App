//
//  HomeView.swift
//  Haushaltsbuch App
//
//  Created by Burak Cüce on 30.03.22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        NavigationView {
            
            ZStack {
                
                Color("background")
                
                VStack (spacing: 20) {
                    
                    Image(systemName: "tray.fill")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 50, height: 50)
                    
                    
                    Text("Keine Einträge")
                        .font(.largeTitle)
                    
                }
                .navigationTitle("Home")
                
                
            }
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
