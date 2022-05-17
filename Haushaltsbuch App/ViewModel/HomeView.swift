//
//  HomeView.swift
//  Haushaltsbuch App
//
//  Created by Burak Cüce on 06.04.22.
//

import SwiftUI

struct HomeView: View {
    
    @State var showHomeView = false
    
    var body: some View {
        
        
        NavigationView {
            
            VStack {
                
                
                CurrentBalanceView(transaction: transactionPreviewData)
                
                DateView(transaction: transactionPreviewData)
                
                ListView(transaction: transactionPreviewData)
                
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
            .navigationBarTitleDisplayMode(.automatic)
        }
        
    }
}



struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(showHomeView: false)
            .environment(\.locale, Locale(identifier: "ger"))
        
    }
}
