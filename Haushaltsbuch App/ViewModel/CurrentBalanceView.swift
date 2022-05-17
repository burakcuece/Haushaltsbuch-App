//
//  CurrentBalanceView.swift
//  Haushaltsbuch App
//
//  Created by Burak Cüce on 07.05.22.
//

import SwiftUI

struct CurrentBalanceView: View {
    
    var transaction: Transaction
    
    var body: some View {
        
        
        Text("Aktueller Kontostand")
            .font(.system(size: 20))
            .fontWeight(.medium)
            .padding(5.0)
        
        
        Text(transaction.signedAmount, format: .currency(code: "EUR"))
            .font(.system(size: 50))
            .fontWeight(.semibold)
            .padding(5.0)
        
    }
}

struct CurrentBalanceView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentBalanceView(transaction: transactionPreviewData)
    }
}
