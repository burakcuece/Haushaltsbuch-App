//
//  FormView.swift
//  Haushaltsbuch App
//
//  Created by Burak Cüce on 06.04.22.
//

import SwiftUI

struct FormView: View {
    
    @State private var titel = ""
    @State private var betrag = NumbersOnly()
    @State private var kategorie = ""
    @State private var selectedInOutPut = "Eingabe"
    @State private var notiz = ""
    
    var inoutput = ["Eingabe", "Ausgabe"]
    
    
    var body: some View {
        
        Form {
            
            Section {
                
                TextField("Titel", text: $titel)
                
            }
            
            Section {
                
                TextField("Betrag", text: $betrag.value)
                    .keyboardType(.numberPad)
                
            }
            
            Section {
                TextField("Kategorie", text: $kategorie)
            }
            
            Section {
                Picker(
                    selection: $selectedInOutPut,
                    label: Text("Bitte auswählen"),
                    content: {
                        Text("Eingabe").tag("1")
                        Text("Ausgabe").tag("2")
                })
            }
        
            
            Section {
                TextField("Notiz", text: $notiz)
                    .frame(height: 150, alignment: .topTrailing)
            }
            
            Button(action: {
                
            }) {
                
                Text("Hinzufügen")
                
                
            }
            
        }
    }
}
struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView()
    }
}

