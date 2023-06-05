//
//  FilteredView.swift
//  APCS Project V3
//
//

//import SwiftUI
//
//
//
//
//struct FilteredView: View {
//    
//    
//    var numIntVisitorsFiltered: [Int] = []
//    
//    
//    var body: some View {
//        
//        
//        List(0..<numIntVisitorsFiltered.count, id: \.self) { index in
//            
//            let filteredData = Filter(names: [parkNames[index]], descriptions: [parkDescriptions[index]], images: [parkImages[index]], locations: [parkLocations[index]], visitors: [filteredList(array1: numIntVisitors[index], array2: numIntVisitorsFiltered[index], biggerThanNum: 50000)])
//            
//            Text(filteredData[1])
//                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
//                .bold()
//                .font(.custom("AmericanTypewriter", fixedSize: 30))
//                .background(Color.clear)
//                .foregroundColor(Color.black)
//                .cornerRadius(10)
//            
//            
//        }
//            
//        func filteredList(array1: [Int], array2: [Int], biggerThanNum: Int){
//            let array1: [Int] = []
//            var array2: [Int] = []
//            var biggerThanNumber: Int = 50000
//
//            for index in 0..<array1.count{
//                if array1[index] > biggerThanNumber{
//                    array2.append(array1[index])
//                }
//            }
//        }
//        }
//}
//struct FilteredView_Previews: PreviewProvider {
//    static var previews: some View {
//        FilteredView()
//    }
//}
