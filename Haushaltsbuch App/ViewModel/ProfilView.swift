//
//  ProfilView.swift
//  Haushaltsbuch App
//
//  Created by Burak Cüce on 30.03.22.
//

import SwiftUI

struct ProfilView: View {
    
    var body: some View {
        
        NavigationView {
            
            
            ZStack {
                
                Color("background")
                
                Text("Profil hinzufügen")
            }
            .navigationTitle("Profil")
            
        }
    }
}

struct ProfilView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilView()
    }
}
