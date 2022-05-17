//
//  DateView.swift
//  Haushaltsbuch App
//
//  Created by Burak Cüce on 07.05.22.
//

import SwiftUI

struct DateView: View {
    
    var transaction: Transaction

    
    var body: some View {
        
        VStack {
            Text(Date.now, style: .date)
            .font(.system(size: 20))
            .fontWeight(.light)
            .padding(5.0)
        
        }
    }
}

struct DateView_Previews: PreviewProvider {
    static var previews: some View {
        DateView(transaction: transactionPreviewData)
    }
}
