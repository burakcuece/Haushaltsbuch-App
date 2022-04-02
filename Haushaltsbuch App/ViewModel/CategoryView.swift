//
//  CategoryView.swift
//  Haushaltsbuch App
//
//  Created by Burak Cüce on 30.03.22.
//

import SwiftUI

struct CategoryView: View {
    var body: some View {
        NavigationView {
            
            ZStack {
                
                Color("background")
                
                Text("Kategorien")
            }
            .navigationTitle("Kategorien")
        }
        
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView()
    }
}
