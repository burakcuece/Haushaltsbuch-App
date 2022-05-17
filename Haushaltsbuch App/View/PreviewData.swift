//
//  PreviewData.swift
//  Haushaltsbuch App
//
//  Created by Burak Cüce on 07.05.22.
//

import Foundation
import SwiftUI

var transactionPreviewData = Transaction(id: 1, date: "09.05.2022", institution: "Sparkasse", account: "Sparkasse Basic", merchant: "Apple", amount: 11.49, type: "debit", categoryId: 801, category: "Software", isPending: false, isTransfer: false, isExpense: true, isEdited: false)

var transactionsListPreviewData = [Transaction](repeating: transactionPreviewData, count: 10)
