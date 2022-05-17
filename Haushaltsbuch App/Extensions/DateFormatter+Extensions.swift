//
//  DateFormatter+Extensions.swift
//  Haushaltsbuch App
//
//  Created by Burak Cüce on 07.05.22.
//

import Foundation
import SwiftUI

extension DateFormatter {
    static let allNumericUSA: DateFormatter = {
        print("Initializing DateFormatter ")
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
        
        return formatter
    }()
}

