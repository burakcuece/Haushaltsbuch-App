//
//  HomeListView.swift
//  Haushaltsbuch App
//
//  Created by Burak Cüce on 06.04.22.
//

import SwiftUI

struct HomeListView: View {
    
    var heute = ["Restaurant"]
    
    var morgen = ["Mutlimedia"]
    
    var übermorgen = ["Einkauf"]
    
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                
                Text("Aktueller Kontostand")
                    .font(.system(size: 15))
                    .fontWeight(.semibold)
                    .padding(5.0)
                
                Text("10,45 €")
                    .font(.system(size: 50))
                    .fontWeight(.semibold)
                    .padding(5.0)
                
                Text("April 2021")
                    .font(.system(size: 15))
                    .fontWeight(.semibold)
                    .padding(5.0)
                
                List {
                    
                    Section(header: Text("Heute")) {
                        
                        ForEach(self.heute, id: \.self) { item in
                            
                            Label(item, systemImage: "fork.knife")
                            
                        }
                    }
                    
                    Section(header: Text("Morgen")) {
                        
                        ForEach(self.morgen, id: \.self) { item in
                            
                            Label(item, systemImage: "laptopcomputer")
                            
                            
                        }
                    }
                    
                    Section(header: Text("Übermorgen")) {
                        ForEach(self.übermorgen, id: \.self) { item in
                            
                            Label(item, systemImage: "cart")
                        }
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("Home")
            .navigationViewStyle(.automatic)
        }
        
    }
}


struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        HomeListView()
    }
}
