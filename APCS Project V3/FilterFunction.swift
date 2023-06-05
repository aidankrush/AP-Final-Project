//
//  FilterFunction.swift
//  APCS Project V3
//
//

//import Foundation
//import SwiftUI
//
//var numIntVisitorsFiltered: [Int] = []
//
//struct Filter {
//    let names : [String]
//    let descriptions : [String]
//    let images : [String]
//    let locations : [String]
//    let visitors : [Int]
//
//
//    class
//
//    mutating func filteredList(numIntVisitors: [Int]) -> [Int]{
//    for index in 0..<numIntVisitors.count{
//
//            if numIntVisitors[index] > 50000{
//                numIntVisitorsFiltered.append(numIntVisitors[index])
//            }
//        }
//        return numIntVisitorsFiltered
//    }
//
//
//
//}
//
//
//
import SwiftUI

func updateButton(count: Int) -> Int {
    
    if count == 0{
        return 1
    }else if count == 1{
        return 2
    }else if count == 2{
        return 3
    }
    return 0
}

func saveButton(count: Int) -> Int{
    if count == 0{
        return 1
    }
    return 0
}

func flameColor(count: Int)-> Color {
    if count == 0 {
        return .white
    }
        return .orange
    
}
