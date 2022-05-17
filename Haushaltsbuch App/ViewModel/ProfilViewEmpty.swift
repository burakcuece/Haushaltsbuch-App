//
//  ProfilViewEmpty.swift
//  Haushaltsbuch App
//
//  Created by Burak Cüce on 30.03.22.
//

import SwiftUI

struct ProfilViewEmpty: View {
    
    var body: some View {
        
        NavigationView {
            
            
            ZStack {
                
                Color(.systemBackground)

                VStack (spacing: 20) {
                    
                    Image(systemName: "person")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 50, height: 50)
                    
                    Text("Profil hinzufügen")
                        .font(.largeTitle)
                }
                .navigationBarTitle(Text("Profil"))
                .navigationBarTitleDisplayMode(.automatic)

            }
        }
    }
}

struct ProfilViewEmpty_Previews: PreviewProvider {
    static var previews: some View {
        ProfilViewEmpty()
    }
}
