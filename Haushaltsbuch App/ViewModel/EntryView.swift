//
//  EntryView.swift
//  Haushaltsbuch App
//
//  Created by Burak Cüce on 30.03.22.
//

import SwiftUI

struct EntryView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("background")
                
                Text("Eintrag hinzufügen")
                
            }
            .navigationTitle("Eintrag hinzufügen")
            
        }
    }
}

struct EntryView_Previews: PreviewProvider {
    static var previews: some View {
        EntryView()
    }
}
