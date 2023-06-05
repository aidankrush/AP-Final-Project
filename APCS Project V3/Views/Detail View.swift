//
//  DetailView.swift
//  APCS Project V3
//

import SwiftUI

struct DetailView: View {
   
    let park: Park 
    let parks = Park.natParks()

    @State private var sortByVisitors = true
 
    var sortedVisitors: [Park] {
        if sortByVisitors {
            return parks.sorted(by: { $0.visitor < $1.visitor } )
        } else {
            return parks
        }
    }
    
    var body: some View {
        
         
          
                ZStack{
                    Color.white
                        .ignoresSafeArea()
                    VStack{
                       
                            AsyncImage(
                                url: URL (string:park.parkImage)!,
                                content: { image in
                                    image.resizable()
                                        .clipShape(Circle())
                                        .aspectRatio(contentMode: .fit)
                                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                                },
                                placeholder: {
                                    ProgressView()
                                }
                            )
                        Spacer()
                        Text(park.parkName)
                            .font(.custom("Baskerville", fixedSize: 40))
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                        Text("Established: \(park.dateEstablished)")
                            .font(.custom("AmericanTypewriter", fixedSize: 25))
                            .foregroundColor(.black)
                            .multilineTextAlignment(.center)
                        Rectangle()
                            .frame(maxWidth: .infinity, maxHeight: 2)
                            .foregroundColor(.black)
                            .shadow(color: .white, radius: 3 )
                        
                        
                        Text("\(park.visitor) Annual Visitors")
                            .font(.custom("AmericanTypewriter", fixedSize: 25))
                            .foregroundColor(.black)
                            .multilineTextAlignment(.center)
                        Rectangle()
                            .frame(maxWidth: .infinity, maxHeight: 2)
                            .foregroundColor(.black)
                            .shadow(color: .white, radius: 3 )
                        
                        
                        Text(park.parkDescription)
                            .font(.custom("AmericanTypewriter", fixedSize: 25))
                            .foregroundColor(.black)
                            .multilineTextAlignment(.center)
                        
                        Text(park.parkLocation)
                            .font(.custom("AmericanTypewriter", fixedSize: 25))
                            .multilineTextAlignment(.center)
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                            .padding(5)
                            .foregroundColor(.black)
                        
                    }.frame(maxWidth: .infinity)
                
            }
        }
    
}
//
//struct Detail_View_Previews: PreviewProvider {
//    static var previews: some View{
//        DetailView()
//    }
//}
