//
//  CustomTabView.swift
//  Haushaltsbuch App
//
//  Created by Burak Cüce on 26.03.22.
//

import SwiftUI

struct CustomTabView: View {
    
    var body: some View {
        TabView() {
            
            HomeView()
                .tabItem {
                    
                    Image(systemName: "house")
                    Text("Home")
                }
            
            DiagramView()
                .tabItem {
                    Image(systemName: "chart.pie.fill")
                    Text("Diagramm")
                }
            
            ProfilView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Profil")
                }
        }
    }
    
}


struct CustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabView()
    }
}
