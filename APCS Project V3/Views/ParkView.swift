//
//  detailView.swift
//  Hackathon
//
//  Created by Madeline Burton on 12/9/22.
//



import SwiftUI

struct ParkView: View {
    
    var parkData : [String] = []

    
    var body: some View {
        
       
        ZStack{
            
            VStack{
                //allows the page to be scrollable to enable all information to be seen
                ScrollView{

                //Text for this screen
                HStack{
                    Text("\(parkData[1]) National Park")
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                        .bold()
                        .font(.custom("AmericanTypewriter", fixedSize: 30))
                        .background(Color.clear)
                        .foregroundColor(Color.black)
                        .cornerRadius(10)
                    
                    
                }
                //includes image in the shape of a capsule with park data from contentview
                AsyncImage(
                    url:URL(string:parkData[0])!,
                    content: { image in
                        image.resizable()
                            .aspectRatio(contentMode: .fill)
                            .scaledToFill()
                            .clipShape(Capsule())
                    },
                    placeholder: {
                        ProgressView()
                    }
                )
                .padding(.vertical)
                Text(parkData[2])
                    .fontWeight(.bold)
                    .font(.title)
                    .foregroundColor(.black)
                    .padding(.vertical)
                    
                //second level of text, strategic new lines (\n) to separate the text
                Text("Established \(parkData[3])\nNumber of Annual Visitors: \(parkData[4])\n \n ")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    .font(.title3)
                    .fontWeight(.semibold)
                    
                //descriptions
                        Text(parkData[5])
                        .fontWeight(.regular)
                        .foregroundColor(.black)
                        .padding(.horizontal)
                        .font(.title2)
                        .multilineTextAlignment(.center)
                }
            }
        }
    }
}

struct ParkView_Previews: PreviewProvider {
    static var previews: some View {
        ParkView()
    }
}
