//
//  DiagramView.swift
//  Haushaltsbuch App
//
//  Created by Burak Cüce on 30.03.22.
//

import SwiftUI

struct DiagramView: View {
    var body: some View {
        NavigationView {
            
            ZStack {
                
                Color("background")
                
                VStack (spacing: 20) {
                    
                    Image(systemName: "circle")
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

struct DiagramView_Previews: PreviewProvider {
    static var previews: some View {
        DiagramView()
    }
}
