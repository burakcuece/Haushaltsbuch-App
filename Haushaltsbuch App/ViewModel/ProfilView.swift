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
                
                VStack (spacing: 20) {
                    
                    Image(systemName: "person")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 50, height: 50)
                    
                    Text("Profil hinzufügen")
                        .font(.largeTitle)
                }
                .navigationBarTitle(Text("Profil"))

            }
        }
    }
}

struct ProfilView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilView()
    }
}
