//
//  ContentView.swift
//  Haushaltsbuch App
//
//  Created by Burak Cüce on 25.03.22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        VStack {
            
            ZStack {
                
                CustomTabView()
                
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.locale, Locale(identifier: "ger"))
    }
}
