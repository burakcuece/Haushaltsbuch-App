//
//  DiagramView.swift
//  Haushaltsbuch App
//
//  Created by Burak Cüce on 12.05.22.
//

import SwiftUI

//MARK:- Donut Graph

struct DiagramView : View {
    
    @ObservedObject var charDataObj = ChartDataContainer()
    
    @State var indexOfTappedSlice = -1
    
    var body: some View {
        
        VStack {
            ZStack {
                ForEach(0..<charDataObj.chartData.count) { index in
                    Circle()
                        .trim(from: index == 0 ? 0.0 : charDataObj.chartData[index-1].value/100,
                              
                              to: charDataObj.chartData[index].value/100)
                        .stroke(charDataObj.chartData[index].color,lineWidth: 50)
                        .onTapGesture {
                            indexOfTappedSlice = indexOfTappedSlice == index ? -1 : index
                        }
                        .scaleEffect(index == indexOfTappedSlice ? 1.1 : 1.0)
                        .animation(.spring())
                }
                if indexOfTappedSlice != -1 {
                    Text(String(format: "%.2f", Double(charDataObj.chartData[indexOfTappedSlice].percent))+"%")
                        .font(.title)
                }
            }
            .frame(width: 200, height: 250)
            .padding()
            .onAppear() {
                self.charDataObj.calc()
            }
            ForEach(0..<charDataObj.chartData.count) { index in
                            HStack {
                                Text(String(format: "%.2f", Double(charDataObj.chartData[index].percent))+"%")
                                    .onTapGesture {
                                        indexOfTappedSlice = indexOfTappedSlice == index ? -1 : index
                                    }
                                    .font(indexOfTappedSlice == index ? .headline : .subheadline)
                                RoundedRectangle(cornerRadius: 8)
                                    .fill(charDataObj.chartData[index].color)
                                    .frame(width: 15, height: 15)
                                
                            }
                        }
                        .padding(8)
                        .frame(width: 300, alignment: .trailing)
            
            
            
            
        }
 
    }
    
    class ChartDataContainer : ObservableObject {
        
        @Published var chartData =
        
        [ChartData(color: Color(#colorLiteral(red: 0, green: 1, blue: 0, alpha: 1)), percent: 40, value: 0),
         ChartData(color: Color(#colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)), percent: 60, value: 0)]
        
        //    init() {
        //        calc()
        //    }
        func calc(){
            var value : CGFloat = 0
            
            for i in 0..<chartData.count {
                value += chartData[i].percent
                chartData[i].value = value
            }
        }
    }
    
    struct ChartData {
        
        var id = UUID()
        var color : Color
        var percent : CGFloat
        var value : CGFloat
        
    }

}
