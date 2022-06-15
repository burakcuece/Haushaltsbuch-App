//
//  FormView.swift
//  Haushaltsbuch App
//
//  Created by Burak Cüce on 17.05.22.
//

import SwiftUI

struct FormView: View {
    
    @State private var titel = ""
    @State private var betrag = NumbersOnly()
    @State private var kategorie = ""
    @State private var selectedInOutPut = "Eingabe"
    @State private var notiz = ""
    
    @Binding var showHomeView: Bool
    
    var body: some View {
       
        
        NavigationView {
            
            Form(content: {
                
                Section {
                    
                    TextField("Titel", text: $titel)
                    
                }
                
                Section {
                    
                    TextField("Betrag", text: $betrag.value)
                    
                }
                
                Section {
                    
                    TextField("Kategorie", text: $kategorie)
                    
                }
                
                Section {
                    Picker(selection: $selectedInOutPut, label: Text("Bitte auswählen"),
                           
                           content: {
                        Text("Eingabe").tag("1")
                        Text("Ausgabe").tag("2")
                    })
                }
                
                Section {
                    
                    TextField("Notiz", text: $notiz)
                        .frame(height: 150, alignment: .top)
                }
                
                Section {
                    Button {
                        print("Hinzufügen")
                    } label: {
                        Text("Hinzufügen")
                    }
                }
                
            })
            .navigationBarTitle("Hinzufügen")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(trailing: Button(action: {
                
                print("Dissmissing home view")
                
                self.showHomeView = false }) {
                    
                  Image(systemName: "x.circle")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .foregroundColor(.black)
                    
            })
        }
    }
}


struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView(showHomeView: .constant(false))
    }
}
