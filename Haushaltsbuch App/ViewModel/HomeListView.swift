//
//  HomeListView.swift
//  Haushaltsbuch App
//
//  Created by Burak Cüce on 06.04.22.
//

import SwiftUI

struct HomeListView: View {
    var body: some View {
        
        NavigationView {
            
            ZStack {
                
                
                Color("background")

                ScrollView {
                    
                    Spacer()
                    
                    
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
                        
                    }
                    .navigationTitle("Home")
                    .navigationViewStyle(.automatic)
                }
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        HomeListView()
    }
}
