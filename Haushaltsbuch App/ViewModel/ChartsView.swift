//
//  ChartsView.swift
//  Haushaltsbuch App
//
//  Created by Burak Cüce on 12.05.22.
//

import SwiftUI
import SwiftPieChart

struct ChartsView: View {
    var body: some View {
        
        
        VStack {
            Spacer()
                .frame(height: 150.0)
            Text("Einnahmen/Ausgaben")
                .font(.largeTitle)
                .foregroundColor(.white)
            PieChartView(
                values: [1400, 300],
                names: ["Einnahmen", "Ausgaben"],
                formatter: {value in String(format: "$%.2f", value)},
                colors: [Color.green, Color.red],
                backgroundColor: Color(red: 30 / 255, green: 54 / 255, blue: 14 / 255, opacity: 1.0))
            .padding(7.0)
        }
        .background(Color(red: 30 / 255, green: 54 / 255, blue: 14 / 255, opacity: 1.0))
        .edgesIgnoringSafeArea([.top, .bottom])
    }
}

struct ChartsView_Previews: PreviewProvider {
    static var previews: some View {
        ChartsView()
    }
}
