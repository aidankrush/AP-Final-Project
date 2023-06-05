//
//  ParksView.swift
//  APCS Project V3
//
//

import SwiftUI

struct ParksView: View {

    let parks = Park.natParks()

    @State private var sortByVisitors = true
 
    var sortedVisitors: [Park] {
        if sortByVisitors {
            return parks.sorted(by: { $0.visitor > $1.visitor } )
        } else {
            return parks
        }
    }
    var body: some View {
        NavigationView{
        ZStack{
            Color.purple
                .ignoresSafeArea()
            VStack {
                Text("National Parks")
                    .font(.custom("AmericanTypewriter", fixedSize: 27))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(10)
                Toggle("List Sorter Button----On for most popular to least popular", isOn: $sortByVisitors)
                    .padding()
                    .foregroundColor(.white)
                    .font(.custom("AmericanTypewriter", fixedSize:
                                    20))
                    .multilineTextAlignment(.center)
                
                
                List(sortedVisitors, id: \.parkName) { park in
                    VStack {
                        HStack{
                            
                            NavigationLink(destination: DetailView(park: park)){
                                VStack{
                                    Text(park.parkName)
                                        .bold()
                                        .font(.custom("AmericanTypewriter", fixedSize:25))
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .foregroundColor(.black)
                                    
                                    AsyncImage(
                                        url: URL (string:park.parkImage)!,
                                        content: { image in
                                            image.resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                        },
                                        placeholder: {
                                            ProgressView()
                                        }
                                    )
                                    Text("Established: \(park.dateEstablished)")
                                        .font(.custom("AmericanTypewriter", fixedSize: 25))
                                        .foregroundColor(.black)
                                        .multilineTextAlignment(.center)
                                    
                                    Rectangle()
                                        .frame(maxWidth: .infinity, maxHeight: 2, alignment: .center)
                                        .foregroundColor(.black)
                                        .shadow(color: .white, radius: 3)
                                    
                                    Text("\(park.visitor) Annual Visitors")
                                        .font(.custom("AmericanTypewriter", fixedSize: 25))
                                        .foregroundColor(.black)
                                        .multilineTextAlignment(.center)
                                    Rectangle()
                                        .frame(maxWidth: .infinity, maxHeight: 2, alignment: .center)
                                        .foregroundColor(.black)
                                        .shadow(color: .white, radius: 3)
                                    Text(park.parkLocation)
                                        .font(.custom("AmericanTypewriter", fixedSize: 25))
                                        .multilineTextAlignment(.center)
                                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                                        .padding(5)
                                        .foregroundColor(.black)
                                }
                                Spacer()
                            }
                            .listStyle(.plain)
                        }
                    }
                    
                }
            }
        }
        }
    }
    struct ListView_Previews: PreviewProvider {
        static var previews: some View {
            ParksView() }
    }
}
