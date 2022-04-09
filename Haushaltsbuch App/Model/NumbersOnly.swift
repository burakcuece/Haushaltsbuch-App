//
//  NumbersOnly.swift
//  Haushaltsbuch App
//
//  Created by Burak Cüce on 06.04.22.
//

import Foundation

class NumbersOnly: ObservableObject {
    
    @Published var value = "" {
        
        didSet {
            
            let filtered = value.filter { $0.isNumber }
            
            if value != filtered {
                value = filtered
            }
        }
    }
}
