//
//  HomeViewEmpty.swift
//  Haushaltsbuch App
//
//  Created by Burak Cüce on 30.03.22.
//

import SwiftUI

struct HomeViewEmpty: View {
    
    @State var navigated = false
    
    @State var showHomeView = false
    
    var body: some View {
        
        
        NavigationView {
            
                ZStack {
                
                Color(.systemBackground)

                
                VStack (spacing: 20) {
                    
                    Image(systemName: "tray")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 50, height: 50)
                    
                    
                    Text("Keine Einträge")
                        .font(.largeTitle)
                    
                }
                .navigationBarTitle(Text("Home"))
                .navigationBarItems(trailing: Button(action: {
                    self.showHomeView.toggle()
                }, label: {
                    Image(systemName: "plus")
                }))
        }
        .sheet(isPresented: $showHomeView, content: {
            FormView(showHomeView: self.$showHomeView)
                
            })
        }
    }
}

struct HomeViewEmpty_Previews: PreviewProvider {
    static var previews: some View {
        HomeViewEmpty()
    }
}
