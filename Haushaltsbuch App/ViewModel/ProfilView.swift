//
//  ProfilView.swift
//  Haushaltsbuch App
//
//  Created by Burak Cüce on 14.05.22.
//

import SwiftUI

struct ProfilView: View {
    
    @State var username:String = ""
    @State var password:String = ""

    
    var body: some View {
        
        VStack {
            Image(systemName: "person.crop.circle")
                .resizable()
                .frame(width: 200, height: 200)
                .foregroundColor(.blue)
            
            
            Text("Registrieren")
                .bold()
                .font(.title)
                .padding()
            
           
            
            TextField("Benutzername", text: $username)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(5.0)
            
            SecureField("Passwort", text: $password)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(5.0)
            
            
            Button {
                print("Konto hinzufügen")
            } label: {
                Spacer()
                Text("Konto hinzufügen")
                    .foregroundColor(.white)
                Spacer()
            }
            .padding()
            .background(Color.blue)
            .cornerRadius(5.0)

            Spacer()
            
        }.padding()
        
    }
}

struct ProfilView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilView()
    }
}
