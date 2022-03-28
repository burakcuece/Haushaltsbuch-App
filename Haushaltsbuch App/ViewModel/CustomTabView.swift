//
//  CustomTabView.swift
//  Haushaltsbuch App
//
//  Created by Burak Cüce on 26.03.22.
//

import SwiftUI

struct CustomTabView: View {
    
    var body: some View {
        NavigationView {
            TabView() {
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
                    
                }
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
                
                Text("Diagramm")
                    .tabItem {
                        Image(systemName: "circle")
                        Text("Diagramm")
                    }
                Text("Eintrag hinzufügen")
                    .tabItem {
                        Image(systemName: "plus")
                    }
                Text("Kategorien")
                    .tabItem {
                        Image(systemName: "square.grid.2x2")
                        Text("Kategorien")
                    }
                Text("Konto hinzufügen")
                    .tabItem {
                        Image(systemName: "person")
                        Text("Profil")
                    }
                
                
                
            }
            .navigationTitle("Haushaltsbuch App")
            .navigationBarTitleDisplayMode(.inline)

        }
    }
    
}


struct CustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabView()
    }
}
