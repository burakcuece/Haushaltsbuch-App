//
//  HomeView.swift
//  Haushaltsbuch App
//
//  Created by Burak Cüce on 26.03.22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        NavigationView {
            
            ZStack {
                
                Color("background")
                
                VStack {
                    
                    Image(systemName: "tray.fill")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 50, height: 50)
                    
                    Text("Keine Einträge")
                        .font(.largeTitle)
                }
                .navigationTitle("Home")
                .navigationBarTitleDisplayMode(.inline)
            }
        }
        CustomTabView()
    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
