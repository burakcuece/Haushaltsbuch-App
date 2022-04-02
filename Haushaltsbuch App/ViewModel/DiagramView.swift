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

                
                Text("Diagramm")
            }
            .navigationTitle("Diagramm")
            
        }
    }
}

struct DiagramView_Previews: PreviewProvider {
    static var previews: some View {
        DiagramView()
    }
}
