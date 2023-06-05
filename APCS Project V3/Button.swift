//
//  Button.swift
//  APCS Project V3
//
//

import SwiftUI

struct Button: View {
    var body: some View {
       
        
        Text("Popular Parks")
            .foregroundColor(.white)
            .padding()
            .padding(.horizontal)
            .background(.blue)
            .cornerRadius(30)
            .shadow(radius: 10)
        
        
    }
}

struct Button_Previews: PreviewProvider {
    static var previews: some View {
        Button()
    }
}
