//
////import SwiftUI
//////used as background. a linear gradient with rainbow colors
//let rainbowGradient = LinearGradient(
//    colors: [Color.red, Color.orange, Color.yellow, Color.green, Color.blue, Color.purple],
//    startPoint: .topLeading, endPoint: .topTrailing)
//
//
//
//
//let coolColorsGradient = LinearGradient(
//    colors: [Color.blue, Color.purple],
//    startPoint: .bottomLeading, endPoint: .topTrailing)
////
////
////
////
////
////struct ContentView: View {
////    // sets all trees to count zero to start them as black
////
////
////    // Keeps track of whether the app is in light or dark mode
////    @Environment(\.colorScheme) var colorScheme
////
////
////
////    var body: some View {
////
////
////
////
////
//            NavigationView{
//
//                ZStack{
//
//                   rainbowGradient
//                        .ignoresSafeArea()
//
//                    VStack{
//
//                        Rectangle()
//                            .frame(maxWidth: .infinity, maxHeight: 2, alignment: .center)
//                            .foregroundColor(.black)
//                            .shadow(color: .white, radius: 3)
//
//                        Text("National Parks")
//                            .font(.largeTitle)
//                            .fontWeight(.heavy)
//                            .frame(maxWidth: .infinity, maxHeight: 50, alignment: .center)
//                            .padding(.vertical)
//
//                        Rectangle()
//                            .frame(maxWidth: .infinity, maxHeight: 2)
//                            .foregroundColor(.black)
//                            .shadow(color: .white, radius: 3 )
//                            .padding(15)
//
//
//
//
//
//
//                        NavigationLink{
//                            FilteredView()
//                        }label: {
//                            Button()
//                        }
//
//
//
//
//                        List(0..<parkNames.count, id: \.self) { index in
//
//                            //combines all the information I want to transfer
////                            let parkData = [parkImages[index], parkNames[index], parkLocations[index], datesEstablished[index], numVisitors[index], parkDescriptions[index]]
//
//
//
//
//
//                            //transfers park data to other screen
//                            NavigationLink(destination: ParkView(parkData: parkData)){
//
//                                //vstack of all information
//                                VStack{
//                                    Spacer(minLength: 30)
//                                    //hstack of the name and locaation together in a vstack with the tree clicker
//                                    HStack{
//                                        VStack{
//
//                                            Text(parkData[1])
//                                                .frame(maxWidth: .infinity, alignment: .center)
//                                                .fontWeight(.bold)
//                                                .font(.title)
//                                                .padding(1)
//
//                                            Text(parkData[2])
//                                                .frame(maxWidth: .infinity, alignment: .center)
//                                                .fontWeight(.semibold)
//                                                .font(.title3)
//                                        }
//
//
//
//                                    }
//                                    //images of the national parks using the urls of the images from the national park data
//                                    AsyncImage(
//                                        url:URL(string:parkData[0])!,
//
//                                        content: { image in
//                                            image.resizable()
//                                                .aspectRatio(contentMode: .fit)
//                                                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
//                                                .shadow(color: .gray, radius: 8)
//                                        },
//                                        placeholder: {
//                                            ProgressView()
//                                        }
//                                    )
//                                    //border to separate the different parks
//                                    Rectangle()
//                                        .frame(maxWidth: .infinity, maxHeight: 2)
//                                        .foregroundColor(.black)
//                                        .shadow(color: .gray, radius: 2 )
//                                        .padding(.vertical)
//
//                                }
//
//                            }
//                        }
//
//                        }
//                                //background for section below the title
//                        .background(rainbowGradient)
//                        .scrollContentBackground(.hidden)
//                        }
//
//                    }
//                }
//            }
//
//
//    struct ContentView_Previews: PreviewProvider {
//        static var previews: some View {
//            ContentView()
//        }
//    }
//
