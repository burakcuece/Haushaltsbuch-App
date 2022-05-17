//
//  DiagramViewEmpty.swift
//  Haushaltsbuch App
//
//  Created by Burak Cüce on 30.03.22.
//

import SwiftUI

struct DiagramViewEmpty: View {
    var body: some View {
        NavigationView {
            
            ZStack {
                
                Color(.systemBackground)
                
                
                VStack (spacing: 20) {
                    
                    Image(systemName: "chart.pie")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 50, height: 50)
                    
                    Text("Keine Daten")
                        .font(.largeTitle)
                }
                .navigationBarTitle(Text("Diagramm"))
                .navigationBarTitleDisplayMode(.automatic)
            }
        }
    }
}

struct DiagramViewEmpty_Previews: PreviewProvider {
    static var previews: some View {
        DiagramViewEmpty()
    }
}
