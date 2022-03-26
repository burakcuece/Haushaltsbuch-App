//
//  CustomTabView.swift
//  Haushaltsbuch App
//
//  Created by Burak Cüce on 26.03.22.
//

import SwiftUI

struct CustomTabView: View {
    var body: some View {
        
        ZStack {
            HStack {
                Image(systemName: "house.fill")
                    .resizable()
                    .frame(width: 30, height: 30)
            }
        }
        
    }
}

struct CustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabView()
    }
}
