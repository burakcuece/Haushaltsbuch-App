//
//  HomeView.swift
//  Haushaltsbuch App
//
//  Created by Burak Cüce on 30.03.22.
//

import SwiftUI

struct HomeView: View {
    
    @State var navigated = false
    
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                
                Color("background")
                
                VStack (spacing: 20) {
                    
                    Image(systemName: "tray")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 50, height: 50)
                    
                    
                    Text("Keine Einträge")
                        .font(.largeTitle)
                    
                }
                .navigationBarTitle(Text("Home"))
                .navigationBarItems(trailing: NavigationLink(destination: {
                    FormView()
                }, label: {
                    Image(systemName: "plus")
                }))
                
                
            }
            .navigationBarTitleDisplayMode(.automatic)
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
