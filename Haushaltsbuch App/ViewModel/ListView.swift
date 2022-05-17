//
//  ListView.swift
//  Haushaltsbuch App
//
//  Created by Burak Cüce on 07.05.22.
//

import SwiftUI

struct ListView: View {
    
    var transaction: Transaction
    
    var body: some View {
        
        List {
            
            Section(header: Text(Date(), style: .date)) {
                
                HStack (spacing: 25) {
                    
                    Image(systemName: "laptopcomputer")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 35)
                    
                    VStack(alignment: .leading, spacing: 2) {
                        Text(transaction.merchant)
                            .fontWeight(.semibold)
                            .font(.system(size: 20))
                            .minimumScaleFactor(0.5)
                        
                        
                        Text(transaction.category)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                    
                    Spacer()
                    
                    Text(transaction.signedAmount, format: .currency(code: "EUR"))
                        .bold()
                        .font(.system(size: 20))
                        .minimumScaleFactor(0.5)
                        .foregroundColor(transaction.type ==  TransactionType.credit.rawValue ? Color.text : .primary)
                    
                    Spacer()
                }
            }
        }
        .listStyle(.grouped)

    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView(transaction: transactionPreviewData)
        
    }
}
